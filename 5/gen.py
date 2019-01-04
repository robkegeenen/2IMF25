#!/usr/bin/env python
num_steps = 10
truck_cap = 320
check_loop = True


class Village:
  def __init__(self, name, id, stock_init, stock_cap, next):
    self.name = name
    self.id = id
    self.stock_init = stock_init
    self.stock_cap = stock_cap
    self.next = next

  def stockb(self, step):
    return("%s_stockb_%d" % (self.name, step))

  def stocka(self, step):
    return("%s_stocka_%d" % (self.name, step))

class Truck:
  def __init__(self, loc_init, stock_cap, travel_time_init):
    self.loc_init = loc_init
    self.stock_cap = stock_cap
    self.travel_time_init = travel_time_init

  def loc(self, step):
    return("truck_loc_%d" % step)

  def stock(self, step):
    return("truck_stock_%d" % step)

  def travel_time(self, step):
    return("truck_travel_time_%d" % step)

srange = range(0, num_steps)
t = Truck(0, truck_cap, 0)
map = [
  Village("s", 0, None, None, {         "a": 29, "b": 21,         }),
  Village("a", 1, 40  , 120 , {"s": 29,          "b": 17, "c": 32,}),
  Village("b", 2, 30  , 120 , {"s": 21, "a": 17,          "c": 37,}),
  Village("c", 3, 145 , 200 , {         "a": 32, "b": 37,         }),
]

#########################
### Declare constants ###
#########################
for s in srange:
  print("(declare-const %s Int)" % t.stock(s))
  print("(declare-const %s Int)" % t.travel_time(s))
  print("(declare-const %s Int)" % t.loc(s))
  for v in map:
    print("(declare-const %s Int)" % v.stockb(s))
    print("(declare-const %s Int)" % v.stocka(s))
  print("(declare-const loopto_%d Bool)" % s)

##########################
### Begin requirements ###
##########################
print("(assert")
print("(and")

######################
### Initial values ###
######################
print("(= %s %d)" % (t.stock(0), t.stock_cap))
print("(= %s %d)" % (t.travel_time(0), t.travel_time_init))
print("(= %s %d)" % (t.loc(0), t.loc_init))
for v in map:
  if v.stock_init:
    print("(= %s %d)" % (v.stockb(0), v.stock_init))
    print("(= %s %d)" % (v.stocka(0), v.stock_init))

#############
### Steps ###
#############
for s in srange[1:]:
  for v in map:
    if v.stock_init:
      print("(= %s (- %s %s))" % (v.stockb(s), v.stocka(s - 1), t.travel_time(s - 1)))

  print("(and")
  for v in map:
    print("  (=> (= %s %d)" % (t.loc(s - 1), v.id))
    print("    (and")
    if v.stock_init:
      print("      (<= %s %d)" % (v.stocka(s), v.stock_cap))
      print("      (= (+ %s %s) (+ %s %s))" % (t.stock(s), v.stocka(s), t.stock(s - 1), v.stockb(s)))
      #If no pickup allowed at villages:
      #print("      (<= %s %s)" % (t.stock(s), t.stock(s - 1)))
    for w in map:
      if v != w and w.stock_init:
        print("      (= %s %s)" % (w.stocka(s), w.stockb(s)))
    print("      (or")
    for n in v.next:
      print("        (and")
      for w in map:
        if n == w.name:
          print("          (= %s %d)" % (t.loc(s), w.id))
          print("          (= %s %d)" % (t.travel_time(s), v.next[n]))
      print("        )")
    print("      )")
    print("    )")
    print("  )")
  print(")")
  print("(<= %s %d)" % (t.stock(s), t.stock_cap))
  print("(>= %s 0)" % t.stock(s))

########################################
### All stocks positive at all times ###
########################################
for s in srange:
  for v in map:
    print("(> %s 0)" % v.stockb(s))
    print("(> %s 0)" % v.stocka(s))

##############################
### Infinite path possible ###
##############################
if check_loop:
  for s in srange[:-1]:
    print("(iff loopto_%d" % s)
    print("  (and")
    print("    (= %s %s)" % (t.loc(s), t.loc(srange[-1])))
    print("    (= %s %s)" % (t.stock(s), t.stock(srange[-1])))
    for v in map:
      if v.stock_init:
        print("    (= %s %s)" % (v.stocka(s), v.stocka(srange[-1])))
    print("  )")
    print(")")
  print("(or")
  for s in srange[:-1]:
    print("  loopto_%d" % s)
  print(")")

########################
### End requirements ###
########################
print("))")
print("(check-sat)")
print("(get-model)")

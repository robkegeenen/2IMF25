#!/usr/bin/env python
import string

domain = "Int"
W = 30
H = 30
comp = [
  {"w": 4 , "h": 3 , "p": True },
  {"w": 4 , "h": 3 , "p": True },
  {"w": 4 , "h": 5 , "p": False},
  {"w": 4 , "h": 6 , "p": False},
  {"w": 5 , "h": 20, "p": False},
  {"w": 6 , "h": 9 , "p": False},
  {"w": 6 , "h": 10, "p": False},
  {"w": 6 , "h": 11, "p": False},
  {"w": 7 , "h": 8 , "p": False},
  {"w": 7 , "h": 12, "p": False},
  {"w": 10, "h": 10, "p": False},
  {"w": 10, "h": 20, "p": False},
]
pd = 18

#########################
### Declare constants ###
#########################
print("(declare-const W %s)" % domain)
print("(declare-const H %s)" % domain)

for i, c in enumerate(comp):
  print("(declare-const X%d %s)" % (i, domain))
  print("(declare-const Y%d %s)" % (i, domain))
  print("(declare-const W%d %s)" % (i, domain))
  print("(declare-const H%d %s)" % (i, domain))

##########################
### Begin requirements ###
##########################
print("(assert")
print("(and")

#############################
### Chip width and height ###
#############################
print("(and (= W %d) (= H %d))" % (W, H))

for i, ci in enumerate(comp):
  ######################################################
  ### Component width and height (or 90deg. rotated) ###
  ######################################################
  vals = sum(zip((i,) * 4, (ci["w"], ci["h"]) * 2), ())
  print("(or (and (= W%d %d) (= H%d %d)) (and (= H%d %d) (= W%d %d)))" % vals)

  ####################################
  ### Component should fit on chip ###
  ####################################
  vals = (i,) * 6
  print("(and (>= X%d 0) (>= Y%d 0) (<= (+ X%d W%d) W) (<= (+ Y%d H%d) H))" % vals)

  #################################
  ### Components do not overlap ###
  #################################
  for j, cj in enumerate(comp):
    if i != j:
      vals = (i, j, j) * 2 + (j, i, i) * 2
      print("(or (>= X%d (+ X%d W%d)) (>= Y%d (+ Y%d H%d)) (>= X%d (+ X%d W%d)) (>= Y%d (+ Y%d H%d)))" % vals)

  #########################################################
  ### Regular components connected to a power component ###
  #########################################################
  if not ci["p"]:
    print("(or")
    for j, cj in enumerate(comp):
      if cj["p"]:
        vars = (i, j, j, j, i, i) * 2
        print(string.join([
          "(and (or",
          "(= X%d (+ X%d W%d))",
          "(= X%d (+ X%d W%d)))",
          "(<= Y%d (+ Y%d H%d))",
          "(<= Y%d (+ Y%d H%d)))",
        ]) % vars)
        print(string.join([
          "(and (or",
          "(= Y%d (+ Y%d H%d))",
          "(= Y%d (+ Y%d H%d)))",
          "(<= X%d (+ X%d W%d))",
          "(<= X%d (+ X%d W%d)))",
        ]) % vars)
    print(")")

##############################################
### Power components separated by distance ###
##############################################
print("(or")
for i, ci in enumerate(comp):
  if ci["p"]:
    for j, cj in enumerate(comp):
      if cj["p"] and i != j:
        print("(>= (- (+ X%d (/ W%d 2)) (+ X%d (/ W%d 2))) %d)" % (i, i, j, j, pd))
        print("(>= (- (+ Y%d (/ H%d 2)) (+ Y%d (/ H%d 2))) %d)" % (i, i, j, j, pd))
print(")")

########################
### End requirements ###
########################
print("))")
print("(check-sat)")
print("(get-model)")

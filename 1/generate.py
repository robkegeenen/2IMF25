#!/usr/bin/env python
from __future__ import print_function
import string

domain = "Int"
T = 6
aT = 4
cT = 8500
pT = 8
pallets = [
  {"name": "C", "fullname": "Cheese"      , "w": 700 , "d": 4 , "a": False},
  {"name": "B", "fullname": "Beer"        , "w": 1300, "d": -1, "a": True },
  {"name": "W", "fullname": "Wine"        , "w": 1000, "d": 8 , "a": True },
  {"name": "D", "fullname": "Soft drinks" , "w": 1500, "d": 10, "a": False},
  {"name": "P", "fullname": "Potato chips", "w": 100 , "d": 5 , "a": False},
]

#########################
### Declare constants ###
#########################
for i in range(1, (T+1)):
  for j, p in enumerate(pallets):
    print("(declare-const %s%d %s)" % (p["name"], i, domain))

##########################
### Begin requirements ###
##########################
print("(assert")
print("(and")

###########################################
### Max truck weights and pallet counts ###
###########################################
for i in range(1, (T+1)):
  fmtw = "(>= %d (+" + " (* %s%d %d)"*len(pallets) + "))"
  valw = (cT,)
  fmtc = "(>= %d (+" + " %s%d"*len(pallets) + "))"
  valc = (pT,)
  for x in pallets:
    valw += (x["name"], i, x["w"])
    valc += (x["name"], i)
  print(fmtw % valw)
  print(fmtc % valc)

#############################
### Delivery Requirements ###
#############################
fmt = string.join(["(= %d (+"] + [" %s%%d" % x["name"] if x["d"] >= 0 else "" for x in pallets] + ["))"], '')
for j, p in enumerate(pallets):
  if p["d"] >= 0:
    print("(= %d (+" % p["d"], end = "")
    for i in range(1, (T+1)):
      print(" %s%d" % (p["name"], i), end = "")
    print("))")

############################
### Non-alcoholic trucks ###
############################
for i in range((aT+1), (T+1)):
  for j, p in enumerate(pallets):
    if p["a"]:
      print("(= 0 %s%d)" % (p["name"], i))

##################################
### Non-negative pallet counts ###
##################################
for i in range(1, (T+1)):
  for j, p in enumerate(pallets):
    print("(>= %s%d 0)" % (p["name"], i))

##########################
### Close requirements ###
##########################
print("))")

fmt = "(maximize (+" + " B%d"*6 + "))"
print(fmt % tuple(range(1, T+1)))

print("(check-sat)")
print("(get-model)")
print("(get-objectives)")

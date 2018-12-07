#!/usr/bin/env python
import string

domain = "Int"
T = 6
aT = 4
cT = 8500
pT = 8
pallets = [
    {"name": "C" , "w": 700 , "d": 4 , "a": False },
    {"name": "B" , "w": 1300 , "d": -1 , "a": True },
    {"name": "W" , "w": 1000 , "d": 8 , "a": True },
    {"name": "D" , "w": 1500 , "d": 10 , "a": False },
    {"name": "P" , "w": 100 , "d": 5 , "a": False },
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

#########################
### Max truck weights ###
#########################
print("(and")
for i in range(1, (T+1)):
    print("(>= %d (" % cT)
    for j, p in enumerate(pallets):
        if j < (len(pallets)-1):
            print("+ (* %s%d %d) (" % (p["name"], i, p["w"]))
        else:
            print("* %s%d %d)" % (p["name"], i, p["w"]))
    for k in range(len(pallets)):
        print(")")
print(")")
#############################
### Delivery Requirements ###
#############################
print("(and")
for j, p in enumerate(pallets):
    if p["d"] > 0:
        print("(= %d (" % p["d"])
        for i in range(1, (T+1)):
            if i < (T-1):
                print("+ %s%d (" % (p["name"], i))
            else:
                if i == T-1:
                    print("+ %s%d " % (p["name"], i))
                else:
                    print("%s%d" % (p["name"], i))
        for k in range(T):
            print(")")
print(")")
############################
### Non-alcoholic trucks ###
############################
print("(and")
for i in range((aT+1), (T+1)):
    for j, p in enumerate(pallets):
        if p["a"]:
            print("(= 0 %s%d)" % (p["name"], i))
print(")")
################################
### Non-negative truck loads ###
################################
print("(and")
for i in range(1, (T+1)):
    for j, p in enumerate(pallets):
        print("(>= %s%d 0)" % (p["name"], i))
print(")")
##########################
### Close requirements ###
##########################
print("))")
for i in range(1, (T+1)):
    print("(maximize B%d)" % i)
print("(check-sat)")
print("(get-model)")
print("(get-objectives)")



#!/usr/bin/env python
from __future__ import print_function
import string

domain = "Int"
n = 10
P = {
  3:  (1, 2),
  6:  (2, 4),
  7:  (1, 4, 5),
  8:  (3, 6),
  9:  (6, 7),
  10: (8, 9),
}
Q = {
  7: (8,),
}
R = {
  3: (4, 5),
  4: (5,)
}
irange = range(1, n+1)

#########################
### Declare constants ###
#########################
for i in irange:
  print("(declare-const s%d %s)" % (i, domain))
  print("(declare-const e%d %s)" % (i, domain))
print("(declare-const t %s)" % domain)

##########################
### Begin requirements ###
##########################
print("(assert")
print("(and")

############################
### Positive start times ###
############################
for i in irange:
  print("(>= s%d 0)" % i)

#################
### End times ###
#################
for i in irange:
  print("(= e%d (+ s%d %d 10))" % ((i,) * 3))

#################
### Job order ###
#################
for i in irange:
  if i in P:
    for j in P[i]:
      print("(>= s%d e%d)" % (i, j))
      
###########################
### Total schedule time ###
###########################
for i in irange:
  print("(= t (ite (>= t e%d) t e%d))" % (i, i))
  
###############################
### Not earlier than jobs Q ###
###############################
print("; The following constraints belong to part (b) of the assignment")
for i in irange:
  if i in Q:
    for j in Q[i]:
      print("(>= s%d s%d)" % (i, j))

################################
### Not parallel with jobs R ###
################################
print("; The following constraints belong to part (c) of the assignment")
for i in irange:
  if i in R:
    for j in R[i]:
      print("(or (<= s%d s%d) (>= s%d e%d))" % ((i, j,) * 2))
      
##########################
### Close requirements ###
##########################
print("))")
print("(minimize t)")
print("(check-sat)")
print("(get-model)")
print("(get-objectives)")

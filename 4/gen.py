#!/usr/bin/env python
import string

imax = 10
nmin = 1
nmax = 10
nexclude = [1, 2, 3, 4, 8, 9, 10]


irange = range(1, imax + 1)

#########################
### Declare constants ###
#########################
print("(declare-const n Int)")
for i in [0] + irange:
  if i > 0:
    print("(declare-const t%d Bool)" % i)
  print("(declare-const a%d Int)" % i)
  print("(declare-const b%d Int)" % i)
  print("(declare-const c%d Bool)" % i)

##########################
### Begin requirements ###
##########################
print("(assert")
print("(and")

######################
### Initial values ###
######################
print("(= a0 1)")
print("(= b0 1)")

#######################
### Loop statements ###
#######################
for i in irange:
  print(string.join([
    "(ite t%d" % i,
    "(and (= a%d (+ a%d (* 2 b%d))) (= b%d (+ b%d %d)))" % (i, i-1, i-1, i, i-1, i),
    "(and (= b%d (+ a%d b%d)) (= a%d (+ a%d %d))))" % (i, i-1, i-1, i, i-1, i),
  ]))

#############################
### Possible values for n ###
#############################
print("(>= n %d)" % nmin)
print("(<= n %d)" % nmax)
for n in nexclude:
  print("(not (= n %d))" % n)

########################
### Crash conditions ###
########################
for i in irange:
  print("(iff c%d (= b%d (+ 600 n)))" % (i, i))

#######################
### Program crashes ###
#######################
print("(or " + string.join(["c%d" % i for i in irange]) + ")")

########################
### End requirements ###
########################
print("))")
print("(check-sat)")
print("(get-model)")

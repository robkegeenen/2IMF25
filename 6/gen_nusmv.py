#!/usr/bin/env python
import string

irange = range(0, 17)
bgn = [7]
end = [7, 16]
stepguess = 4180

#############################
### Variable declarations ###
#############################
print("MODULE main")
print("VAR")
print("s: 0..%d;" % stepguess)
for i in irange:
  print("a%d: boolean;" % i)

######################
### Initial values ###
######################
print("\nINIT")
for i in irange:
  print("%sa%d &" % ("" if i in bgn else "!", i))
print("s = 0")

###################################################
### Transitions (only if 's' does not overflow) ###
###################################################
print("\nTRANS")
print("case")
print("  s < %d:" % stepguess)
print("    next(s) = s + 1 & (")
def rest(f, L):
  return(string.join(["%snext(a%d) = a%d" % (f, x, x) for x in L], " &\n"))

##############
### Rule 1 ###
##############
print("      (")
print("        next(a0) = TRUE &")
print(rest("        ", irange[1:]))
print("      ) |")

##############
### Rule 2 ###
##############
print("      (")
print("        next(a0) = a1 &")
print("        next(a1) = a0 &")
print(rest("        ", irange[2:]))
print("      ) |")

##############
### Rule 3 ###
##############
for i in irange[2:]:
  print("      (")
  print("        (a%d & a%d) &" % (i-2, i-1))
  print("          next(a%d) = FALSE &" % (i-2))
  print("          next(a%d) = FALSE &" % (i-1))
  print("          next(a%d) = TRUE &" % i)
  print(rest("          ", [x for x in irange if x not in [i-2, i-1, i]]))
  print("      )" + ("" if i == irange[-1] else " |"))

#######################################
### If 's' would overflow then bail ###
#######################################
print("    );")
print("  TRUE:")
print("    next(s) = s;")
print("esac")

###############################################
### Required state reachable in the guessed ###
### number of steps but not in one less?    ###
###############################################
for guess, neg in {stepguess: "", stepguess - 1: "!"}.iteritems():
  print("\nSPEC %s EF (s > 0 &" % neg)
  for i in end:
    print("  a%d &" % i)
  print("  s <= %d)" % guess)

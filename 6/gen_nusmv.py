#!/usr/bin/env python
import string

irange = range(0, 17)
bgn = [7]
end = [7, 16]
stepguess = 4180

print("MODULE main")
print("VAR")
print("s: 0..%d;" % stepguess)
for i in irange:
  print("a%d: boolean;" % i)

print("\nINIT")
for i in irange:
  print("%sa%d &" % ("" if i in bgn else "!", i))
print("s = 0")

print("\nTRANS")
print("case")
print("  s < %d:" % stepguess)
print("    next(s) = s + 1 & (")
def rest(f, L):
  return(string.join(["%snext(a%d) = a%d" % (f, x, x) for x in L], " &\n"))

for i in irange[2:]:
  print("      (")
  print("        (a%d & a%d) &" % (i-2, i-1))
  print("          next(a%d) = FALSE &" % (i-2))
  print("          next(a%d) = FALSE &" % (i-1))
  print("          next(a%d) = TRUE &" % i)
  print(rest("          ", [x for x in irange if x not in [i-2, i-1, i]]))
  print("      ) |")

print("      (")
print("        next(a0) = TRUE &")
print(rest("        ", irange[1:]))
print("      ) |")

print("      (")
print("        next(a0) = a1 &")
print("        next(a1) = a0 &")
print(rest("        ", irange[2:]))
print("      )")

print("    );")
print("  TRUE:")
print("    next(s) = s;")
print("esac")

for guess in [stepguess, stepguess - 1]:
  print("\nSPEC EF (s > 0 &")
  for i in end:
    print("  a%d &" % i)
  print("  s <= %d)" % guess)

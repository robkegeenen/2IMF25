#!/usr/bin/env python
import sys, re

values = {}
cur = ()

with open(sys.argv[1], "r") as file:
  for line in file:
    m = re.search('^\s*\(define-fun\s*([CBWDP])([0-9]*).*$', line)
    if m:
      cur = (m.group(2), m.group(1))
    m = re.search('^\s*([0-9]*)\)$', line)
    if m and cur:
      if cur[0] in values:
        values[cur[0]].update({cur[1]: m.group(1)})
      else:
        values.update({cur[0]: {cur[1]: m.group(1)}})
      cur = ()

print("B = %d" % int(values.pop('')["B"]))
print("Truck &  C &  B &  W &  D &  P")
for v in sorted(values, key = lambda kv: int(kv)):
  print("   %2d & %2d & %2d & %2d & %2d & %2d" % (
    int(v),
    int(values[v]["C"]),
    int(values[v]["B"]),
    int(values[v]["W"]),
    int(values[v]["D"]),
    int(values[v]["P"]),
  ))

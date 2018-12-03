#!/usr/bin/env python
import sys, re

values = {}
cur = ()

with open(sys.argv[1], "r") as file:
  for line in file:
    m = re.search('^\s*\(define-fun\s*([abctn])([0-9]*).*$', line)
    if m:
      cur = (m.group(2), m.group(1))
    m = re.search('^\s*([0-9]*|true|false)\)$', line)
    if m and cur:
      if cur[0] in values:
        values[cur[0]].update({cur[1]: m.group(1)})
      else:
        values.update({cur[0]: {cur[1]: m.group(1)}})
      cur = ()

print("n = %d" % int(values.pop('')["n"]))
print(" i &     t &    a &    b &     c")
for v in sorted(values, key = lambda kv: int(kv)):
  print("%2d & %5s & %4d & %4d & %5s" % (
    int(v),
    (values[v]["t"] if "t" in values[v] else ""),
    int(values[v]["a"]),
    int(values[v]["b"]),
    (values[v]["c"] if "c" in values[v] else ""),
  ))

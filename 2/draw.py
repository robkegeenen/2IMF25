#!/usr/bin/env python
import sys, re
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

values = {}
cur = ()

with open(sys.argv[1], "r") as file:
  for line in file:
    m = re.search('^\s*\(define-fun\s*([WHXY])([0-9]*).*$', line)
    if m:
      cur = (m.group(2), m.group(1))
    m = re.search('^\s*([0-9]*)\)$', line)
    if m and cur:
      if cur[0] in values:
        values[cur[0]].update({cur[1]: int(m.group(1))})
      else:
        values.update({cur[0]: {cur[1]: int(m.group(1))}})
      cur = ()

size = values.pop('')

scale = 0.15
fig = plt.figure(figsize = (size["W"] * scale, size["H"] * scale))
ax = plt.axes()
ax.set_xlim(0, size["W"])
ax.set_ylim(0, size["H"])
for r in values:
  coloridx = float(r) / (len(values) - 1)
  color = plt.cm.gist_ncar(coloridx)
  rect = Rectangle((values[r]["X"], values[r]["Y"]),
                    values[r]["W"], values[r]["H"],
                   facecolor = color)
  ax.add_patch(rect)
  rx, ry = rect.get_xy()
  cx = rx + rect.get_width()  / 2.0
  cy = ry + rect.get_height() / 2.0
  ax.annotate(r, (cx, cy), color = "k", ha = "center", va = "center")
plt.show()

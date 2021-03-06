#!/usr/bin/env python
import sys, re
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

fname = sys.argv[1]

values = {}
cur = ()

with open(fname, "r") as file:
  for line in file:
    m = re.search('^\s*\(define-fun\s*([set])([0-9]*).*$', line)
    if m:
      cur = (m.group(2), m.group(1))
    m = re.search('^\s*([0-9]*)\)$', line)
    if m and cur:
      if cur[0] in values:
        values[cur[0]].update({cur[1]: int(m.group(1))})
      else:
        values.update({cur[0]: {cur[1]: int(m.group(1))}})
      cur = ()

t = values.pop('')["t"]

xscale = 0.07
yscale = 0.25
fig = plt.figure(figsize = (t * xscale, len(values) * yscale))
ax = plt.axes()
ax.set_xlim(0, t)
ax.set_ylim(0, len(values))
for r in values:
  coloridx = float(r) / (len(values) - 1)
  color = plt.cm.gist_ncar(coloridx)
  rect = Rectangle((values[r]["s"], int(r) - 1),
                   values[r]["e"] - values[r]["s"], 1,
                   facecolor = color)
  ax.add_patch(rect)
  rx, ry = rect.get_xy()
  cx = rx + rect.get_width()  / 2.0
  cy = ry + rect.get_height() / 2.0
  ax.annotate(r, (cx, cy), color = "k", ha = "center", va = "center")
fig.tight_layout()
fig.savefig(fname + ".pdf", format = "pdf")

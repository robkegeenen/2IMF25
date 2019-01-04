#!/usr/bin/env python
import os

assumptions = [
  "x * (y * z) = (x * y) * z",
  "x * I = x",
  "x * inv(x) = I",
  "p(x, base) = x",
  "p(x, s(y)) = x * p(x, y)",
]

goals = {
  "a1.p9": [
    "I * x = x",
    "inv(inv(x)) = x",
    "inv(x) * x = I",
    "inv(x * y) = inv(y) * inv(x)",
  ],
  "a2.m4": [
    "inv(x * y) = inv(x) * inv(y)",
  ],
  "b.m4": [
    "x * y = y * x",
  ],
  "c2.m4": [
    "(p(z, s(base)) = I) -> (x * y = y * x)",
  ],
  "c3.m4": [
    "(p(z, s(s(base))) = I) -> (x * y = y * x)",
  ],
  "c4.m4": [
    "(p(z, s(s(s(base)))) = I) -> (x * y = y * x)",
  ],
}

for fname in goals:
  path = os.path.join(os.path.dirname(os.path.realpath(__file__)), fname)
  with open(path, "w") as f:
    f.write("formulas(assumptions).\n")
    for line in assumptions:
      f.write(line + ".\n")
    f.write("end_of_list.\n\nformulas(goals).")
    for line in goals[fname]:
      f.write(line + ".\n")
    f.write("end_of_list.\n")

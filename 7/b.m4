formulas(assumptions).
x * (y * z) = (x * y) * z.
x * I = x.
x * inv(x) = I.
p(x, base) = x.
p(x, s(y)) = x * p(x, y).
end_of_list.

formulas(goals).x * y = y * x.
end_of_list.

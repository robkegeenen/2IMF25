formulas(assumptions).
x * (y * z) = (x * y) * z.
x * I = x.
x * inv(x) = I.
p(x, base) = x.
p(x, s(y)) = x * p(x, y).
end_of_list.

formulas(goals).
inv(x * y) = inv(x) * inv(y).
end_of_list.

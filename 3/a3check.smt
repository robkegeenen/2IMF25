(declare-const s1 Int)
(declare-const e1 Int)
(declare-const s2 Int)
(declare-const e2 Int)
(declare-const s3 Int)
(declare-const e3 Int)
(declare-const s4 Int)
(declare-const e4 Int)
(declare-const s5 Int)
(declare-const e5 Int)
(declare-const s6 Int)
(declare-const e6 Int)
(declare-const s7 Int)
(declare-const e7 Int)
(declare-const s8 Int)
(declare-const e8 Int)
(declare-const s9 Int)
(declare-const e9 Int)
(declare-const s10 Int)
(declare-const e10 Int)
(declare-const t Int)
(assert
(and
(= e1 (+ s1 1 10))
(= e2 (+ s2 2 10))
(= e3 (+ s3 3 10))
(= e4 (+ s4 4 10))
(= e5 (+ s5 5 10))
(= e6 (+ s6 6 10))
(= e7 (+ s7 7 10))
(= e8 (+ s8 8 10))
(= e9 (+ s9 9 10))
(= e10 (+ s10 10 10))
(>= s3 e1)
(>= s3 e2)
(>= s6 e2)
(>= s6 e4)
(>= s7 e1)
(>= s7 e4)
(>= s7 e5)
(>= s8 e3)
(>= s8 e6)
(>= s9 e6)
(>= s9 e7)
(>= s10 e8)
(>= s10 e9)
(= t (max e1 e2 e3 e4 e5 e6 e7 e8 e9 e10))
))
(minimize t)
(check-sat)
(get-model)
(get-objectives)
(declare-const C1 Int)
(declare-const B1 Int)
(declare-const W1 Int)
(declare-const D1 Int)
(declare-const P1 Int)
(declare-const C2 Int)
(declare-const B2 Int)
(declare-const W2 Int)
(declare-const D2 Int)
(declare-const P2 Int)
(declare-const C3 Int)
(declare-const B3 Int)
(declare-const W3 Int)
(declare-const D3 Int)
(declare-const P3 Int)
(declare-const C4 Int)
(declare-const B4 Int)
(declare-const W4 Int)
(declare-const D4 Int)
(declare-const P4 Int)
(declare-const C5 Int)
(declare-const B5 Int)
(declare-const W5 Int)
(declare-const D5 Int)
(declare-const P5 Int)
(declare-const C6 Int)
(declare-const B6 Int)
(declare-const W6 Int)
(declare-const D6 Int)
(declare-const P6 Int)
(assert
(and
(and
(>= 8500 (
+ (* C1 700) (
+ (* B1 1300) (
+ (* W1 1000) (
+ (* D1 1500) (
* P1 100)
)
)
)
)
)
(>= 8500 (
+ (* C2 700) (
+ (* B2 1300) (
+ (* W2 1000) (
+ (* D2 1500) (
* P2 100)
)
)
)
)
)
(>= 8500 (
+ (* C3 700) (
+ (* B3 1300) (
+ (* W3 1000) (
+ (* D3 1500) (
* P3 100)
)
)
)
)
)
(>= 8500 (
+ (* C4 700) (
+ (* B4 1300) (
+ (* W4 1000) (
+ (* D4 1500) (
* P4 100)
)
)
)
)
)
(>= 8500 (
+ (* C5 700) (
+ (* B5 1300) (
+ (* W5 1000) (
+ (* D5 1500) (
* P5 100)
)
)
)
)
)
(>= 8500 (
+ (* C6 700) (
+ (* B6 1300) (
+ (* W6 1000) (
+ (* D6 1500) (
* P6 100)
)
)
)
)
)
)
(and
(= 4 (
+ C1 (
+ C2 (
+ C3 (
+ C4 (
+ C5 
C6
)
)
)
)
)
)
(= 8 (
+ W1 (
+ W2 (
+ W3 (
+ W4 (
+ W5 
W6
)
)
)
)
)
)
(= 10 (
+ D1 (
+ D2 (
+ D3 (
+ D4 (
+ D5 
D6
)
)
)
)
)
)
(= 5 (
+ P1 (
+ P2 (
+ P3 (
+ P4 (
+ P5 
P6
)
)
)
)
)
)
)
(and
(= 0 B5)
(= 0 W5)
(= 0 B6)
(= 0 W6)
)
(and
(>= C1 0)
(>= B1 0)
(>= W1 0)
(>= D1 0)
(>= P1 0)
(>= C2 0)
(>= B2 0)
(>= W2 0)
(>= D2 0)
(>= P2 0)
(>= C3 0)
(>= B3 0)
(>= W3 0)
(>= D3 0)
(>= P3 0)
(>= C4 0)
(>= B4 0)
(>= W4 0)
(>= D4 0)
(>= P4 0)
(>= C5 0)
(>= B5 0)
(>= W5 0)
(>= D5 0)
(>= P5 0)
(>= C6 0)
(>= B6 0)
(>= W6 0)
(>= D6 0)
(>= P6 0)
)
))
(maximize B1)
(maximize B2)
(maximize B3)
(maximize B4)
(maximize B5)
(maximize B6)
(check-sat)
(get-model)
(get-objectives)
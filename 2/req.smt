(declare-const W Int)
(declare-const H Int)
(declare-const D Int)
(declare-const X0 Int)
(declare-const Y0 Int)
(declare-const W0 Int)
(declare-const H0 Int)
(declare-const X1 Int)
(declare-const Y1 Int)
(declare-const W1 Int)
(declare-const H1 Int)
(declare-const X2 Int)
(declare-const Y2 Int)
(declare-const W2 Int)
(declare-const H2 Int)
(declare-const X3 Int)
(declare-const Y3 Int)
(declare-const W3 Int)
(declare-const H3 Int)
(declare-const X4 Int)
(declare-const Y4 Int)
(declare-const W4 Int)
(declare-const H4 Int)
(declare-const X5 Int)
(declare-const Y5 Int)
(declare-const W5 Int)
(declare-const H5 Int)
(declare-const X6 Int)
(declare-const Y6 Int)
(declare-const W6 Int)
(declare-const H6 Int)
(declare-const X7 Int)
(declare-const Y7 Int)
(declare-const W7 Int)
(declare-const H7 Int)
(declare-const X8 Int)
(declare-const Y8 Int)
(declare-const W8 Int)
(declare-const H8 Int)
(declare-const X9 Int)
(declare-const Y9 Int)
(declare-const W9 Int)
(declare-const H9 Int)
(declare-const X10 Int)
(declare-const Y10 Int)
(declare-const W10 Int)
(declare-const H10 Int)
(declare-const X11 Int)
(declare-const Y11 Int)
(declare-const W11 Int)
(declare-const H11 Int)
(assert
(and
(and (= W 30) (= H 30) (= D 18))
(or (and (= W0 4) (= H0 3)) (and (= H0 4) (= W0 3)))
(and (>= X0 0) (>= Y0 0) (<= (+ X0 W0) W) (<= (+ Y0 H0) H))
(or (>= X0 (+ X1 W1)) (>= Y0 (+ Y1 H1)) (>= X1 (+ X0 W0)) (>= Y1 (+ Y0 H0)))
(or (>= X0 (+ X2 W2)) (>= Y0 (+ Y2 H2)) (>= X2 (+ X0 W0)) (>= Y2 (+ Y0 H0)))
(or (>= X0 (+ X3 W3)) (>= Y0 (+ Y3 H3)) (>= X3 (+ X0 W0)) (>= Y3 (+ Y0 H0)))
(or (>= X0 (+ X4 W4)) (>= Y0 (+ Y4 H4)) (>= X4 (+ X0 W0)) (>= Y4 (+ Y0 H0)))
(or (>= X0 (+ X5 W5)) (>= Y0 (+ Y5 H5)) (>= X5 (+ X0 W0)) (>= Y5 (+ Y0 H0)))
(or (>= X0 (+ X6 W6)) (>= Y0 (+ Y6 H6)) (>= X6 (+ X0 W0)) (>= Y6 (+ Y0 H0)))
(or (>= X0 (+ X7 W7)) (>= Y0 (+ Y7 H7)) (>= X7 (+ X0 W0)) (>= Y7 (+ Y0 H0)))
(or (>= X0 (+ X8 W8)) (>= Y0 (+ Y8 H8)) (>= X8 (+ X0 W0)) (>= Y8 (+ Y0 H0)))
(or (>= X0 (+ X9 W9)) (>= Y0 (+ Y9 H9)) (>= X9 (+ X0 W0)) (>= Y9 (+ Y0 H0)))
(or (>= X0 (+ X10 W10)) (>= Y0 (+ Y10 H10)) (>= X10 (+ X0 W0)) (>= Y10 (+ Y0 H0)))
(or (>= X0 (+ X11 W11)) (>= Y0 (+ Y11 H11)) (>= X11 (+ X0 W0)) (>= Y11 (+ Y0 H0)))
(or (and (= W1 4) (= H1 3)) (and (= H1 4) (= W1 3)))
(and (>= X1 0) (>= Y1 0) (<= (+ X1 W1) W) (<= (+ Y1 H1) H))
(or (>= X1 (+ X0 W0)) (>= Y1 (+ Y0 H0)) (>= X0 (+ X1 W1)) (>= Y0 (+ Y1 H1)))
(or (>= X1 (+ X2 W2)) (>= Y1 (+ Y2 H2)) (>= X2 (+ X1 W1)) (>= Y2 (+ Y1 H1)))
(or (>= X1 (+ X3 W3)) (>= Y1 (+ Y3 H3)) (>= X3 (+ X1 W1)) (>= Y3 (+ Y1 H1)))
(or (>= X1 (+ X4 W4)) (>= Y1 (+ Y4 H4)) (>= X4 (+ X1 W1)) (>= Y4 (+ Y1 H1)))
(or (>= X1 (+ X5 W5)) (>= Y1 (+ Y5 H5)) (>= X5 (+ X1 W1)) (>= Y5 (+ Y1 H1)))
(or (>= X1 (+ X6 W6)) (>= Y1 (+ Y6 H6)) (>= X6 (+ X1 W1)) (>= Y6 (+ Y1 H1)))
(or (>= X1 (+ X7 W7)) (>= Y1 (+ Y7 H7)) (>= X7 (+ X1 W1)) (>= Y7 (+ Y1 H1)))
(or (>= X1 (+ X8 W8)) (>= Y1 (+ Y8 H8)) (>= X8 (+ X1 W1)) (>= Y8 (+ Y1 H1)))
(or (>= X1 (+ X9 W9)) (>= Y1 (+ Y9 H9)) (>= X9 (+ X1 W1)) (>= Y9 (+ Y1 H1)))
(or (>= X1 (+ X10 W10)) (>= Y1 (+ Y10 H10)) (>= X10 (+ X1 W1)) (>= Y10 (+ Y1 H1)))
(or (>= X1 (+ X11 W11)) (>= Y1 (+ Y11 H11)) (>= X11 (+ X1 W1)) (>= Y11 (+ Y1 H1)))
(or (and (= W2 4) (= H2 5)) (and (= H2 4) (= W2 5)))
(and (>= X2 0) (>= Y2 0) (<= (+ X2 W2) W) (<= (+ Y2 H2) H))
(or (>= X2 (+ X0 W0)) (>= Y2 (+ Y0 H0)) (>= X0 (+ X2 W2)) (>= Y0 (+ Y2 H2)))
(or (>= X2 (+ X1 W1)) (>= Y2 (+ Y1 H1)) (>= X1 (+ X2 W2)) (>= Y1 (+ Y2 H2)))
(or (>= X2 (+ X3 W3)) (>= Y2 (+ Y3 H3)) (>= X3 (+ X2 W2)) (>= Y3 (+ Y2 H2)))
(or (>= X2 (+ X4 W4)) (>= Y2 (+ Y4 H4)) (>= X4 (+ X2 W2)) (>= Y4 (+ Y2 H2)))
(or (>= X2 (+ X5 W5)) (>= Y2 (+ Y5 H5)) (>= X5 (+ X2 W2)) (>= Y5 (+ Y2 H2)))
(or (>= X2 (+ X6 W6)) (>= Y2 (+ Y6 H6)) (>= X6 (+ X2 W2)) (>= Y6 (+ Y2 H2)))
(or (>= X2 (+ X7 W7)) (>= Y2 (+ Y7 H7)) (>= X7 (+ X2 W2)) (>= Y7 (+ Y2 H2)))
(or (>= X2 (+ X8 W8)) (>= Y2 (+ Y8 H8)) (>= X8 (+ X2 W2)) (>= Y8 (+ Y2 H2)))
(or (>= X2 (+ X9 W9)) (>= Y2 (+ Y9 H9)) (>= X9 (+ X2 W2)) (>= Y9 (+ Y2 H2)))
(or (>= X2 (+ X10 W10)) (>= Y2 (+ Y10 H10)) (>= X10 (+ X2 W2)) (>= Y10 (+ Y2 H2)))
(or (>= X2 (+ X11 W11)) (>= Y2 (+ Y11 H11)) (>= X11 (+ X2 W2)) (>= Y11 (+ Y2 H2)))
(or
(and (or (= X2 (+ X0 W0)) (= X0 (+ X2 W2))) (<= Y2 (+ Y0 H0)) (<= Y0 (+ Y2 H2)))
(and (or (= Y2 (+ Y0 H0)) (= Y0 (+ Y2 H2))) (<= X2 (+ X0 W0)) (<= X0 (+ X2 W2)))
(and (or (= X2 (+ X1 W1)) (= X1 (+ X2 W2))) (<= Y2 (+ Y1 H1)) (<= Y1 (+ Y2 H2)))
(and (or (= Y2 (+ Y1 H1)) (= Y1 (+ Y2 H2))) (<= X2 (+ X1 W1)) (<= X1 (+ X2 W2)))
)
(or (and (= W3 4) (= H3 6)) (and (= H3 4) (= W3 6)))
(and (>= X3 0) (>= Y3 0) (<= (+ X3 W3) W) (<= (+ Y3 H3) H))
(or (>= X3 (+ X0 W0)) (>= Y3 (+ Y0 H0)) (>= X0 (+ X3 W3)) (>= Y0 (+ Y3 H3)))
(or (>= X3 (+ X1 W1)) (>= Y3 (+ Y1 H1)) (>= X1 (+ X3 W3)) (>= Y1 (+ Y3 H3)))
(or (>= X3 (+ X2 W2)) (>= Y3 (+ Y2 H2)) (>= X2 (+ X3 W3)) (>= Y2 (+ Y3 H3)))
(or (>= X3 (+ X4 W4)) (>= Y3 (+ Y4 H4)) (>= X4 (+ X3 W3)) (>= Y4 (+ Y3 H3)))
(or (>= X3 (+ X5 W5)) (>= Y3 (+ Y5 H5)) (>= X5 (+ X3 W3)) (>= Y5 (+ Y3 H3)))
(or (>= X3 (+ X6 W6)) (>= Y3 (+ Y6 H6)) (>= X6 (+ X3 W3)) (>= Y6 (+ Y3 H3)))
(or (>= X3 (+ X7 W7)) (>= Y3 (+ Y7 H7)) (>= X7 (+ X3 W3)) (>= Y7 (+ Y3 H3)))
(or (>= X3 (+ X8 W8)) (>= Y3 (+ Y8 H8)) (>= X8 (+ X3 W3)) (>= Y8 (+ Y3 H3)))
(or (>= X3 (+ X9 W9)) (>= Y3 (+ Y9 H9)) (>= X9 (+ X3 W3)) (>= Y9 (+ Y3 H3)))
(or (>= X3 (+ X10 W10)) (>= Y3 (+ Y10 H10)) (>= X10 (+ X3 W3)) (>= Y10 (+ Y3 H3)))
(or (>= X3 (+ X11 W11)) (>= Y3 (+ Y11 H11)) (>= X11 (+ X3 W3)) (>= Y11 (+ Y3 H3)))
(or
(and (or (= X3 (+ X0 W0)) (= X0 (+ X3 W3))) (<= Y3 (+ Y0 H0)) (<= Y0 (+ Y3 H3)))
(and (or (= Y3 (+ Y0 H0)) (= Y0 (+ Y3 H3))) (<= X3 (+ X0 W0)) (<= X0 (+ X3 W3)))
(and (or (= X3 (+ X1 W1)) (= X1 (+ X3 W3))) (<= Y3 (+ Y1 H1)) (<= Y1 (+ Y3 H3)))
(and (or (= Y3 (+ Y1 H1)) (= Y1 (+ Y3 H3))) (<= X3 (+ X1 W1)) (<= X1 (+ X3 W3)))
)
(or (and (= W4 5) (= H4 20)) (and (= H4 5) (= W4 20)))
(and (>= X4 0) (>= Y4 0) (<= (+ X4 W4) W) (<= (+ Y4 H4) H))
(or (>= X4 (+ X0 W0)) (>= Y4 (+ Y0 H0)) (>= X0 (+ X4 W4)) (>= Y0 (+ Y4 H4)))
(or (>= X4 (+ X1 W1)) (>= Y4 (+ Y1 H1)) (>= X1 (+ X4 W4)) (>= Y1 (+ Y4 H4)))
(or (>= X4 (+ X2 W2)) (>= Y4 (+ Y2 H2)) (>= X2 (+ X4 W4)) (>= Y2 (+ Y4 H4)))
(or (>= X4 (+ X3 W3)) (>= Y4 (+ Y3 H3)) (>= X3 (+ X4 W4)) (>= Y3 (+ Y4 H4)))
(or (>= X4 (+ X5 W5)) (>= Y4 (+ Y5 H5)) (>= X5 (+ X4 W4)) (>= Y5 (+ Y4 H4)))
(or (>= X4 (+ X6 W6)) (>= Y4 (+ Y6 H6)) (>= X6 (+ X4 W4)) (>= Y6 (+ Y4 H4)))
(or (>= X4 (+ X7 W7)) (>= Y4 (+ Y7 H7)) (>= X7 (+ X4 W4)) (>= Y7 (+ Y4 H4)))
(or (>= X4 (+ X8 W8)) (>= Y4 (+ Y8 H8)) (>= X8 (+ X4 W4)) (>= Y8 (+ Y4 H4)))
(or (>= X4 (+ X9 W9)) (>= Y4 (+ Y9 H9)) (>= X9 (+ X4 W4)) (>= Y9 (+ Y4 H4)))
(or (>= X4 (+ X10 W10)) (>= Y4 (+ Y10 H10)) (>= X10 (+ X4 W4)) (>= Y10 (+ Y4 H4)))
(or (>= X4 (+ X11 W11)) (>= Y4 (+ Y11 H11)) (>= X11 (+ X4 W4)) (>= Y11 (+ Y4 H4)))
(or
(and (or (= X4 (+ X0 W0)) (= X0 (+ X4 W4))) (<= Y4 (+ Y0 H0)) (<= Y0 (+ Y4 H4)))
(and (or (= Y4 (+ Y0 H0)) (= Y0 (+ Y4 H4))) (<= X4 (+ X0 W0)) (<= X0 (+ X4 W4)))
(and (or (= X4 (+ X1 W1)) (= X1 (+ X4 W4))) (<= Y4 (+ Y1 H1)) (<= Y1 (+ Y4 H4)))
(and (or (= Y4 (+ Y1 H1)) (= Y1 (+ Y4 H4))) (<= X4 (+ X1 W1)) (<= X1 (+ X4 W4)))
)
(or (and (= W5 6) (= H5 9)) (and (= H5 6) (= W5 9)))
(and (>= X5 0) (>= Y5 0) (<= (+ X5 W5) W) (<= (+ Y5 H5) H))
(or (>= X5 (+ X0 W0)) (>= Y5 (+ Y0 H0)) (>= X0 (+ X5 W5)) (>= Y0 (+ Y5 H5)))
(or (>= X5 (+ X1 W1)) (>= Y5 (+ Y1 H1)) (>= X1 (+ X5 W5)) (>= Y1 (+ Y5 H5)))
(or (>= X5 (+ X2 W2)) (>= Y5 (+ Y2 H2)) (>= X2 (+ X5 W5)) (>= Y2 (+ Y5 H5)))
(or (>= X5 (+ X3 W3)) (>= Y5 (+ Y3 H3)) (>= X3 (+ X5 W5)) (>= Y3 (+ Y5 H5)))
(or (>= X5 (+ X4 W4)) (>= Y5 (+ Y4 H4)) (>= X4 (+ X5 W5)) (>= Y4 (+ Y5 H5)))
(or (>= X5 (+ X6 W6)) (>= Y5 (+ Y6 H6)) (>= X6 (+ X5 W5)) (>= Y6 (+ Y5 H5)))
(or (>= X5 (+ X7 W7)) (>= Y5 (+ Y7 H7)) (>= X7 (+ X5 W5)) (>= Y7 (+ Y5 H5)))
(or (>= X5 (+ X8 W8)) (>= Y5 (+ Y8 H8)) (>= X8 (+ X5 W5)) (>= Y8 (+ Y5 H5)))
(or (>= X5 (+ X9 W9)) (>= Y5 (+ Y9 H9)) (>= X9 (+ X5 W5)) (>= Y9 (+ Y5 H5)))
(or (>= X5 (+ X10 W10)) (>= Y5 (+ Y10 H10)) (>= X10 (+ X5 W5)) (>= Y10 (+ Y5 H5)))
(or (>= X5 (+ X11 W11)) (>= Y5 (+ Y11 H11)) (>= X11 (+ X5 W5)) (>= Y11 (+ Y5 H5)))
(or
(and (or (= X5 (+ X0 W0)) (= X0 (+ X5 W5))) (<= Y5 (+ Y0 H0)) (<= Y0 (+ Y5 H5)))
(and (or (= Y5 (+ Y0 H0)) (= Y0 (+ Y5 H5))) (<= X5 (+ X0 W0)) (<= X0 (+ X5 W5)))
(and (or (= X5 (+ X1 W1)) (= X1 (+ X5 W5))) (<= Y5 (+ Y1 H1)) (<= Y1 (+ Y5 H5)))
(and (or (= Y5 (+ Y1 H1)) (= Y1 (+ Y5 H5))) (<= X5 (+ X1 W1)) (<= X1 (+ X5 W5)))
)
(or (and (= W6 6) (= H6 10)) (and (= H6 6) (= W6 10)))
(and (>= X6 0) (>= Y6 0) (<= (+ X6 W6) W) (<= (+ Y6 H6) H))
(or (>= X6 (+ X0 W0)) (>= Y6 (+ Y0 H0)) (>= X0 (+ X6 W6)) (>= Y0 (+ Y6 H6)))
(or (>= X6 (+ X1 W1)) (>= Y6 (+ Y1 H1)) (>= X1 (+ X6 W6)) (>= Y1 (+ Y6 H6)))
(or (>= X6 (+ X2 W2)) (>= Y6 (+ Y2 H2)) (>= X2 (+ X6 W6)) (>= Y2 (+ Y6 H6)))
(or (>= X6 (+ X3 W3)) (>= Y6 (+ Y3 H3)) (>= X3 (+ X6 W6)) (>= Y3 (+ Y6 H6)))
(or (>= X6 (+ X4 W4)) (>= Y6 (+ Y4 H4)) (>= X4 (+ X6 W6)) (>= Y4 (+ Y6 H6)))
(or (>= X6 (+ X5 W5)) (>= Y6 (+ Y5 H5)) (>= X5 (+ X6 W6)) (>= Y5 (+ Y6 H6)))
(or (>= X6 (+ X7 W7)) (>= Y6 (+ Y7 H7)) (>= X7 (+ X6 W6)) (>= Y7 (+ Y6 H6)))
(or (>= X6 (+ X8 W8)) (>= Y6 (+ Y8 H8)) (>= X8 (+ X6 W6)) (>= Y8 (+ Y6 H6)))
(or (>= X6 (+ X9 W9)) (>= Y6 (+ Y9 H9)) (>= X9 (+ X6 W6)) (>= Y9 (+ Y6 H6)))
(or (>= X6 (+ X10 W10)) (>= Y6 (+ Y10 H10)) (>= X10 (+ X6 W6)) (>= Y10 (+ Y6 H6)))
(or (>= X6 (+ X11 W11)) (>= Y6 (+ Y11 H11)) (>= X11 (+ X6 W6)) (>= Y11 (+ Y6 H6)))
(or
(and (or (= X6 (+ X0 W0)) (= X0 (+ X6 W6))) (<= Y6 (+ Y0 H0)) (<= Y0 (+ Y6 H6)))
(and (or (= Y6 (+ Y0 H0)) (= Y0 (+ Y6 H6))) (<= X6 (+ X0 W0)) (<= X0 (+ X6 W6)))
(and (or (= X6 (+ X1 W1)) (= X1 (+ X6 W6))) (<= Y6 (+ Y1 H1)) (<= Y1 (+ Y6 H6)))
(and (or (= Y6 (+ Y1 H1)) (= Y1 (+ Y6 H6))) (<= X6 (+ X1 W1)) (<= X1 (+ X6 W6)))
)
(or (and (= W7 6) (= H7 11)) (and (= H7 6) (= W7 11)))
(and (>= X7 0) (>= Y7 0) (<= (+ X7 W7) W) (<= (+ Y7 H7) H))
(or (>= X7 (+ X0 W0)) (>= Y7 (+ Y0 H0)) (>= X0 (+ X7 W7)) (>= Y0 (+ Y7 H7)))
(or (>= X7 (+ X1 W1)) (>= Y7 (+ Y1 H1)) (>= X1 (+ X7 W7)) (>= Y1 (+ Y7 H7)))
(or (>= X7 (+ X2 W2)) (>= Y7 (+ Y2 H2)) (>= X2 (+ X7 W7)) (>= Y2 (+ Y7 H7)))
(or (>= X7 (+ X3 W3)) (>= Y7 (+ Y3 H3)) (>= X3 (+ X7 W7)) (>= Y3 (+ Y7 H7)))
(or (>= X7 (+ X4 W4)) (>= Y7 (+ Y4 H4)) (>= X4 (+ X7 W7)) (>= Y4 (+ Y7 H7)))
(or (>= X7 (+ X5 W5)) (>= Y7 (+ Y5 H5)) (>= X5 (+ X7 W7)) (>= Y5 (+ Y7 H7)))
(or (>= X7 (+ X6 W6)) (>= Y7 (+ Y6 H6)) (>= X6 (+ X7 W7)) (>= Y6 (+ Y7 H7)))
(or (>= X7 (+ X8 W8)) (>= Y7 (+ Y8 H8)) (>= X8 (+ X7 W7)) (>= Y8 (+ Y7 H7)))
(or (>= X7 (+ X9 W9)) (>= Y7 (+ Y9 H9)) (>= X9 (+ X7 W7)) (>= Y9 (+ Y7 H7)))
(or (>= X7 (+ X10 W10)) (>= Y7 (+ Y10 H10)) (>= X10 (+ X7 W7)) (>= Y10 (+ Y7 H7)))
(or (>= X7 (+ X11 W11)) (>= Y7 (+ Y11 H11)) (>= X11 (+ X7 W7)) (>= Y11 (+ Y7 H7)))
(or
(and (or (= X7 (+ X0 W0)) (= X0 (+ X7 W7))) (<= Y7 (+ Y0 H0)) (<= Y0 (+ Y7 H7)))
(and (or (= Y7 (+ Y0 H0)) (= Y0 (+ Y7 H7))) (<= X7 (+ X0 W0)) (<= X0 (+ X7 W7)))
(and (or (= X7 (+ X1 W1)) (= X1 (+ X7 W7))) (<= Y7 (+ Y1 H1)) (<= Y1 (+ Y7 H7)))
(and (or (= Y7 (+ Y1 H1)) (= Y1 (+ Y7 H7))) (<= X7 (+ X1 W1)) (<= X1 (+ X7 W7)))
)
(or (and (= W8 7) (= H8 8)) (and (= H8 7) (= W8 8)))
(and (>= X8 0) (>= Y8 0) (<= (+ X8 W8) W) (<= (+ Y8 H8) H))
(or (>= X8 (+ X0 W0)) (>= Y8 (+ Y0 H0)) (>= X0 (+ X8 W8)) (>= Y0 (+ Y8 H8)))
(or (>= X8 (+ X1 W1)) (>= Y8 (+ Y1 H1)) (>= X1 (+ X8 W8)) (>= Y1 (+ Y8 H8)))
(or (>= X8 (+ X2 W2)) (>= Y8 (+ Y2 H2)) (>= X2 (+ X8 W8)) (>= Y2 (+ Y8 H8)))
(or (>= X8 (+ X3 W3)) (>= Y8 (+ Y3 H3)) (>= X3 (+ X8 W8)) (>= Y3 (+ Y8 H8)))
(or (>= X8 (+ X4 W4)) (>= Y8 (+ Y4 H4)) (>= X4 (+ X8 W8)) (>= Y4 (+ Y8 H8)))
(or (>= X8 (+ X5 W5)) (>= Y8 (+ Y5 H5)) (>= X5 (+ X8 W8)) (>= Y5 (+ Y8 H8)))
(or (>= X8 (+ X6 W6)) (>= Y8 (+ Y6 H6)) (>= X6 (+ X8 W8)) (>= Y6 (+ Y8 H8)))
(or (>= X8 (+ X7 W7)) (>= Y8 (+ Y7 H7)) (>= X7 (+ X8 W8)) (>= Y7 (+ Y8 H8)))
(or (>= X8 (+ X9 W9)) (>= Y8 (+ Y9 H9)) (>= X9 (+ X8 W8)) (>= Y9 (+ Y8 H8)))
(or (>= X8 (+ X10 W10)) (>= Y8 (+ Y10 H10)) (>= X10 (+ X8 W8)) (>= Y10 (+ Y8 H8)))
(or (>= X8 (+ X11 W11)) (>= Y8 (+ Y11 H11)) (>= X11 (+ X8 W8)) (>= Y11 (+ Y8 H8)))
(or
(and (or (= X8 (+ X0 W0)) (= X0 (+ X8 W8))) (<= Y8 (+ Y0 H0)) (<= Y0 (+ Y8 H8)))
(and (or (= Y8 (+ Y0 H0)) (= Y0 (+ Y8 H8))) (<= X8 (+ X0 W0)) (<= X0 (+ X8 W8)))
(and (or (= X8 (+ X1 W1)) (= X1 (+ X8 W8))) (<= Y8 (+ Y1 H1)) (<= Y1 (+ Y8 H8)))
(and (or (= Y8 (+ Y1 H1)) (= Y1 (+ Y8 H8))) (<= X8 (+ X1 W1)) (<= X1 (+ X8 W8)))
)
(or (and (= W9 7) (= H9 12)) (and (= H9 7) (= W9 12)))
(and (>= X9 0) (>= Y9 0) (<= (+ X9 W9) W) (<= (+ Y9 H9) H))
(or (>= X9 (+ X0 W0)) (>= Y9 (+ Y0 H0)) (>= X0 (+ X9 W9)) (>= Y0 (+ Y9 H9)))
(or (>= X9 (+ X1 W1)) (>= Y9 (+ Y1 H1)) (>= X1 (+ X9 W9)) (>= Y1 (+ Y9 H9)))
(or (>= X9 (+ X2 W2)) (>= Y9 (+ Y2 H2)) (>= X2 (+ X9 W9)) (>= Y2 (+ Y9 H9)))
(or (>= X9 (+ X3 W3)) (>= Y9 (+ Y3 H3)) (>= X3 (+ X9 W9)) (>= Y3 (+ Y9 H9)))
(or (>= X9 (+ X4 W4)) (>= Y9 (+ Y4 H4)) (>= X4 (+ X9 W9)) (>= Y4 (+ Y9 H9)))
(or (>= X9 (+ X5 W5)) (>= Y9 (+ Y5 H5)) (>= X5 (+ X9 W9)) (>= Y5 (+ Y9 H9)))
(or (>= X9 (+ X6 W6)) (>= Y9 (+ Y6 H6)) (>= X6 (+ X9 W9)) (>= Y6 (+ Y9 H9)))
(or (>= X9 (+ X7 W7)) (>= Y9 (+ Y7 H7)) (>= X7 (+ X9 W9)) (>= Y7 (+ Y9 H9)))
(or (>= X9 (+ X8 W8)) (>= Y9 (+ Y8 H8)) (>= X8 (+ X9 W9)) (>= Y8 (+ Y9 H9)))
(or (>= X9 (+ X10 W10)) (>= Y9 (+ Y10 H10)) (>= X10 (+ X9 W9)) (>= Y10 (+ Y9 H9)))
(or (>= X9 (+ X11 W11)) (>= Y9 (+ Y11 H11)) (>= X11 (+ X9 W9)) (>= Y11 (+ Y9 H9)))
(or
(and (or (= X9 (+ X0 W0)) (= X0 (+ X9 W9))) (<= Y9 (+ Y0 H0)) (<= Y0 (+ Y9 H9)))
(and (or (= Y9 (+ Y0 H0)) (= Y0 (+ Y9 H9))) (<= X9 (+ X0 W0)) (<= X0 (+ X9 W9)))
(and (or (= X9 (+ X1 W1)) (= X1 (+ X9 W9))) (<= Y9 (+ Y1 H1)) (<= Y1 (+ Y9 H9)))
(and (or (= Y9 (+ Y1 H1)) (= Y1 (+ Y9 H9))) (<= X9 (+ X1 W1)) (<= X1 (+ X9 W9)))
)
(or (and (= W10 10) (= H10 10)) (and (= H10 10) (= W10 10)))
(and (>= X10 0) (>= Y10 0) (<= (+ X10 W10) W) (<= (+ Y10 H10) H))
(or (>= X10 (+ X0 W0)) (>= Y10 (+ Y0 H0)) (>= X0 (+ X10 W10)) (>= Y0 (+ Y10 H10)))
(or (>= X10 (+ X1 W1)) (>= Y10 (+ Y1 H1)) (>= X1 (+ X10 W10)) (>= Y1 (+ Y10 H10)))
(or (>= X10 (+ X2 W2)) (>= Y10 (+ Y2 H2)) (>= X2 (+ X10 W10)) (>= Y2 (+ Y10 H10)))
(or (>= X10 (+ X3 W3)) (>= Y10 (+ Y3 H3)) (>= X3 (+ X10 W10)) (>= Y3 (+ Y10 H10)))
(or (>= X10 (+ X4 W4)) (>= Y10 (+ Y4 H4)) (>= X4 (+ X10 W10)) (>= Y4 (+ Y10 H10)))
(or (>= X10 (+ X5 W5)) (>= Y10 (+ Y5 H5)) (>= X5 (+ X10 W10)) (>= Y5 (+ Y10 H10)))
(or (>= X10 (+ X6 W6)) (>= Y10 (+ Y6 H6)) (>= X6 (+ X10 W10)) (>= Y6 (+ Y10 H10)))
(or (>= X10 (+ X7 W7)) (>= Y10 (+ Y7 H7)) (>= X7 (+ X10 W10)) (>= Y7 (+ Y10 H10)))
(or (>= X10 (+ X8 W8)) (>= Y10 (+ Y8 H8)) (>= X8 (+ X10 W10)) (>= Y8 (+ Y10 H10)))
(or (>= X10 (+ X9 W9)) (>= Y10 (+ Y9 H9)) (>= X9 (+ X10 W10)) (>= Y9 (+ Y10 H10)))
(or (>= X10 (+ X11 W11)) (>= Y10 (+ Y11 H11)) (>= X11 (+ X10 W10)) (>= Y11 (+ Y10 H10)))
(or
(and (or (= X10 (+ X0 W0)) (= X0 (+ X10 W10))) (<= Y10 (+ Y0 H0)) (<= Y0 (+ Y10 H10)))
(and (or (= Y10 (+ Y0 H0)) (= Y0 (+ Y10 H10))) (<= X10 (+ X0 W0)) (<= X0 (+ X10 W10)))
(and (or (= X10 (+ X1 W1)) (= X1 (+ X10 W10))) (<= Y10 (+ Y1 H1)) (<= Y1 (+ Y10 H10)))
(and (or (= Y10 (+ Y1 H1)) (= Y1 (+ Y10 H10))) (<= X10 (+ X1 W1)) (<= X1 (+ X10 W10)))
)
(or (and (= W11 10) (= H11 20)) (and (= H11 10) (= W11 20)))
(and (>= X11 0) (>= Y11 0) (<= (+ X11 W11) W) (<= (+ Y11 H11) H))
(or (>= X11 (+ X0 W0)) (>= Y11 (+ Y0 H0)) (>= X0 (+ X11 W11)) (>= Y0 (+ Y11 H11)))
(or (>= X11 (+ X1 W1)) (>= Y11 (+ Y1 H1)) (>= X1 (+ X11 W11)) (>= Y1 (+ Y11 H11)))
(or (>= X11 (+ X2 W2)) (>= Y11 (+ Y2 H2)) (>= X2 (+ X11 W11)) (>= Y2 (+ Y11 H11)))
(or (>= X11 (+ X3 W3)) (>= Y11 (+ Y3 H3)) (>= X3 (+ X11 W11)) (>= Y3 (+ Y11 H11)))
(or (>= X11 (+ X4 W4)) (>= Y11 (+ Y4 H4)) (>= X4 (+ X11 W11)) (>= Y4 (+ Y11 H11)))
(or (>= X11 (+ X5 W5)) (>= Y11 (+ Y5 H5)) (>= X5 (+ X11 W11)) (>= Y5 (+ Y11 H11)))
(or (>= X11 (+ X6 W6)) (>= Y11 (+ Y6 H6)) (>= X6 (+ X11 W11)) (>= Y6 (+ Y11 H11)))
(or (>= X11 (+ X7 W7)) (>= Y11 (+ Y7 H7)) (>= X7 (+ X11 W11)) (>= Y7 (+ Y11 H11)))
(or (>= X11 (+ X8 W8)) (>= Y11 (+ Y8 H8)) (>= X8 (+ X11 W11)) (>= Y8 (+ Y11 H11)))
(or (>= X11 (+ X9 W9)) (>= Y11 (+ Y9 H9)) (>= X9 (+ X11 W11)) (>= Y9 (+ Y11 H11)))
(or (>= X11 (+ X10 W10)) (>= Y11 (+ Y10 H10)) (>= X10 (+ X11 W11)) (>= Y10 (+ Y11 H11)))
(or
(and (or (= X11 (+ X0 W0)) (= X0 (+ X11 W11))) (<= Y11 (+ Y0 H0)) (<= Y0 (+ Y11 H11)))
(and (or (= Y11 (+ Y0 H0)) (= Y0 (+ Y11 H11))) (<= X11 (+ X0 W0)) (<= X0 (+ X11 W11)))
(and (or (= X11 (+ X1 W1)) (= X1 (+ X11 W11))) (<= Y11 (+ Y1 H1)) (<= Y1 (+ Y11 H11)))
(and (or (= Y11 (+ Y1 H1)) (= Y1 (+ Y11 H11))) (<= X11 (+ X1 W1)) (<= X1 (+ X11 W11)))
)
(or
(>= (- (+ X0 (/ W0 2)) (+ X1 (/ W1 2))) D)
(>= (- (+ Y0 (/ H0 2)) (+ Y1 (/ H1 2))) D)
(>= (- (+ X1 (/ W1 2)) (+ X0 (/ W0 2))) D)
(>= (- (+ Y1 (/ H1 2)) (+ Y0 (/ H0 2))) D)
)
))
(check-sat)
(get-model)

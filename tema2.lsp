; 1
(defun power (x y)
    (if (>= y 1)
        (* x (power x (- y 1)))
        1
    )
)

; 2
(defun ex2 (x y)
    (* x x y y)
)

; 3
(defun cnt (l)
    (if (endp l)
        0
        (if (numberp (car l))
            (+ 1 (cnt (cdr l)))
            (cnt (cdr l))
        )
    )
)

; 4
(defun aceleasi-elemente (l)
    (if (endp (cdr l))
        T
        (if (= (car l) (cadr l))
            (and T (aceleasi-elemente (cdr l))) 
            NIL
        )
    )
)

#| 5.
 (U V W)
 B
 (U V W)
 (U V W)
 (SETQ '(U V W))
 (U V W)
 A
 A
 (A A B)
 ((A B) (LIST 'A 'B))
 DOUBLE
 4.6
 TIMES-SQUARE
 36
 TIMES-CUBE
 CUBE-TIMES
 54
|#

; 6
(defun concat (l1 l2)
    (if (endp l1)
        l2
        (cons (car l1) (concat (cdr l1) l2))
    )
)

;7
(defun factorial (n)
    (if (<= n 0)
        1
        (* (factorial (- n 1)) n)
    )
)

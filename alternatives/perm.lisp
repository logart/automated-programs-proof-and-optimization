:program

(defun cut-first (l r e)
    (if (> (len r) 0)
        (if (= e (car r))
            (append l (cdr r))
            (cut-first (append l (list (car r))) (cdr r) e)
        )
        nil
    )
)

(defun perm (a b)
    (if (or (not a) (not b))
        nil
        (if (and (= 1 (len a)) (= 1 (len b)))
            (= (car a) (car b))
            (perm (cdr a) (cut-first '() b (car a)))
        )
    )
)

(perm '(1) '(2))
(perm '(1 2 3) '(3 2 1))
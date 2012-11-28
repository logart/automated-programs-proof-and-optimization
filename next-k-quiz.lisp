:program

(defun next-k (k)
    (if (evenp k)
        (/ k 2)
        (+ (* 3 k) 1)
    )
)

(defun next-k-iter-list (k)
    (if (integerp k)
        (if (equal k 1)
            '(1)
            (append (list k) (next-k-iter-list (next-k k)))
        )
        '()
    )    
)

(defun next-k-iter-count (k)
    (if (integerp k)
        (if (equal k 1)
            1
            (+ (next-k-iter-count (next-k k)) 1)
        )
        0
    )    
)
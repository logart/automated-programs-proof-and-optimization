(defun no-dupls-p (lst)
    (if (and (true-listp lst) (> (len lst) 0))
        (if (member (car lst) (cdr lst))
            nil
            (no-dupls-p (cdr lst))
        )
        T
    )
)

(no-dupls-p '(1))
(no-dupls-p '(1 2 3))
(no-dupls-p '(1 2 3 3 1))
(no-dupls-p '(1 2 3 3))
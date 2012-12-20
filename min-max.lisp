(defun my-min (lst)
    (if (true-listp lst)
        (if (<= (length lst) 1)
            (car lst)
            (if (< (car lst) (car (cdr lst)))
                (my-min (cons (car lst) (cdr (cdr lst))))
                (my-min (cdr lst))
            )
        )
        lst
    )
)


(defun my-max (lst)
    (if (true-listp lst)
        (if (<= (length lst) 1)
            (car lst)
            (if (> (car lst) (car (cdr lst)))
                (my-max (cons (car lst) (cdr (cdr lst))))
                (my-max (cdr lst))
            )
        )
        lst
    )
)
:program
(defun merge-sort-internal (left right)
    (if (not left)
        right
        (if (not right)
            left
            (if (> (car left) (car right))
                (append (list (car right)) (merge-sort-internal left (cdr right)))
                (append (list (car left)) (merge-sort-internal (cdr left) right))
            )
        )
    )
)

(merge-sort-internal '(1 2 3) '(4 5 6))

(defun sorted-cons (a b)
    (if (not a)
        b
        (if (not b)
            a
            (if (< a b)
                (list a b)
                (list b a)
            )
        )
    )
)

(defun ntail (lst num)
    (if (> num 0)
        (ntail (cdr lst) (- num 1))
        lst
    )
)

(defun nhead (lst num)
    (if (> num 1)
        (append (list (car lst)) (nhead (cdr lst) (- num 1)))
        (list (car lst))
    )
)

(defun merge-sort (lst)
    (if (and (consp lst) (> (length lst) 2))
        (merge-sort-internal (merge-sort (nhead lst (/ (length lst) 2))) (merge-sort (ntail lst (+(/ (length lst) 2)))))
        (if (= (length lst) 2)
            (sorted-cons (car lst) (car (cdr lst)))
            lst
        )
    )
)
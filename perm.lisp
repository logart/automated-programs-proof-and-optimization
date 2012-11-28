(defun remove-by-value (before-lst val after-lst)
    (if (> (length after-lst) 0)
        (if (= (car after-lst) val)
            (append before-lst (cdr after-lst))
            (remove-by-value (append before-lst (list (car after-lst))) val(cdr after-lst))
        )
        nil
    )
)

(defun perm (lst1 lst2)
    (if (and (consp lst1) (consp lst2) (= (length lst1) (length lst2)))
        (if ( > (length lst1) 1 )
            (perm (cdr lst1) (remove-by-value '() (car lst1) lst2))
            T
        )
        nil
    )
)

(perm '(1 2 3 4 5) '(2 3 4 1 5))
(perm '(1 2 3 4 5) '(2 3 4 1 ))
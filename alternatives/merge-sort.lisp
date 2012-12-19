(defun mymerge (l1 l2)
    (if (= 0 (length l2))
        l1
        (if (= 0 (length l1))
            l2
            (if (< (car l1) (car l2))
                (append (list (car l1)) (mymerge (cdr l1) l2))
                (append (list (car l2)) (mymerge (cdr l2) l1))
            )
        )
    )
)

(defun sublist (l _len)
    (if (> _len 0)
        (append (list (car l)) (sublist (cdr l) (- _len 1)))
        nil
    )
)

(defun merge-sort (l)
    (if (> (length l) 2)
        (mymerge (merge-sort (sublist l (ceiling (length l) 2))) (merge-sort (sublist (reverse l) (floor (length l) 2))))
        (if (< (length l) 2)
            l
            (if (< (car l) (car (cdr l)))
                l
                (append (cdr l) (list (car l)))
            )
        )
    )
)
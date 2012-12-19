; a initially is empty
(defun insert (a b x)
    (if (and (> (length b) 0) (> x (car b)))
        (insert (append a (list (car b))) (cdr b) x)
        (append a (list x) b)
    )
)

; sorted initially is empty
(defun insertion_sort_internal (sorted a)
    (if (> (length a) 0)
        (insertion_sort_internal (insert '() sorted (car a)) (cdr a))
        sorted
    )
)

(defun insertion_sort (a) (insertion_sort_internal '() a))

; ------------------------------------------------------------------------------

; remove elem's first occurrence from b
; a initially is empty
(defun remove_first (a elem b)
    (if (> (length b) 0)
        (if (= (car b) elem)
            (append a (cdr b))
            (remove_first (append a (list (car b))) elem (cdr b))
        )
        a
    )
)

; add elem to beginning of a & remove its first occurrence from b
(defun move (a b elem)
    (list (append (list elem) a) (remove_first '() elem b))
)

; get the maximal element of list a
(defun maximum (a)
    (if (> (length a) 1)
        (max (car a) (maximum (cdr a)))
        (car a)
    )
)

; a - (sorted unsorted)
(defun selection_sort_internal (a)
    (if (> (length (car (cdr a))) 0) ; length of unsorted
        ; unsorted = (car (cdr a))
        ; sorted = (car a)
        (selection_sort_internal (move (car a) (car (cdr a)) (maximum (car (cdr a)))))
        (append (car (cdr a)) (car a))
    )
)

(defun selection_sort (a) (selection_sort_internal '(() a)))

; ------------------------------------------------------------------------------

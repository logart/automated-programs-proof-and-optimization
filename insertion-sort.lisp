(defun insert-element (beforelst afterlst element)
    (if (and (integerp (car afterlst)) (> element (car afterlst)) (> (length afterlst) 0))
        (insert-element (append beforelst (list (car afterlst))) (cdr afterlst) element)
        (append beforelst (list element) afterlst)
    )
)

(defun internal-insertion-sort (result lst)
    (if (car lst)
        (internal-insertion-sort (insert-element '() result (car lst)) (cdr lst))
        result
    )
)

(defun insertion-sort (lst)
    (internal-insertion-sort '() lst)
)


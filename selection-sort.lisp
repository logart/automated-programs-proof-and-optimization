(defun max-element (lst element)
    (if (and (true-listp lst) (> (length lst) 0))
        (if (< element (car lst))
            (max-element (cdr lst) (car lst))
            (max-element (cdr lst) element)
        )
        element
    )
)

(defun remove-by-value (result lst element)
    (if (> (length lst) 0)
        (if (= element (car lst))
            (append result (cdr lst))
            (remove-by-value (append result (list (car lst))) (cdr lst) element)
        )
        nil
    )
)

(defun selection-sort-internal (sorted-lst raw-lst)
    (if (> (length raw-lst) 0)
        (selection-sort-internal 
            (append 
                sorted-lst
                (list
                    (max-element 
                        (cdr raw-lst)
                        (car raw-lst)
                    )
                )
            )
            (remove-by-value 
                '() 
                raw-lst 
                (max-element 
                    (cdr raw-lst)
                    (car raw-lst)
                )
            )
        )
        sorted-lst
    )
)

(selection-sort-internal '() '(1 2 3 4 5))
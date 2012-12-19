(defun incByOne (a)
    (if (integerp a)
        (+ a 1)
        nil
    )
)

(defun forEach (lst func)
    (if (consp lst)
        (append (list (funcall func (car lst))) (forEach (cdr lst) func))
        (funcall func lst)
    )
)

(forEach '(1 2 3) 'incByOne)
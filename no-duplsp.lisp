(defun no-dupls-p (lst)
    (if (equal (member (car lst) (cdr lst)) nil)
        T
        nil
    )
)

(no-dupls-p '(1 2 3))
(no-dupls-p '(1 2 3 3 1))
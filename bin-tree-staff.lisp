(defun bin-tree-sum (tree)
  (if (atom tree)
    tree
    (+ (bin-tree-sum (car tree)) (bin-tree-sum (cdr tree)))
  )
)


(defun bin-tree-walk (tree)
  (if (atom tree)
    (list tree)
    (append (bin-tree-walk (car tree)) (bin-tree-walk (cdr tree)))
  )
)

(defun bin-tree-reverse (tree)
  (if (atom tree)
    tree
    (cons (bin-tree-reverse (cdr tree)) (bin-tree-reverse (car tree)))
  )
)

(defun bin-tree-depth (tree)
  (if (atom tree)
    0
    (+ (max (bin-tree-depth (car tree)) (bin-tree-depth (cdr tree))) 1)
  )
)

(defun bin-tree-depth (tree e)
  (if (atom tree)
    c
    (if (>  (bin-tree-depth (car tree) c)
            (bin-tree-depth (cdr tree) c)
        )
      (bin-tree-depth (car tree) (+ c 1))
      (bin-tree-depth (cdr tree) (+ c 1))
    )
  )
)
(bin-tree-depth (cons 3 '(4 . 2)))

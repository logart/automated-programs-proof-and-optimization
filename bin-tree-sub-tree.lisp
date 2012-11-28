(defun bin-tree-subtree (tree path)
    (if (and (> (length path) 0) (consp tree))
        (if (equal (subseq path 0 1) "L")
            (bin-tree-subtree (car tree) (subseq path 1 (length path)))
            (bin-tree-subtree (cdr tree) (subseq path 1 (length path)))
        )
        tree
    )
)

(bin-tree-subtree '((1 . 2) . (3 . 4)) "LR")
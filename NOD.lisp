(defun NOD (a b)
    (if (and (integerp a) (integerp b))
        (if (= (mod a b) 0)
            b
            (min (NOD a (mod a b)) (NOD b (mod a b)))
        )
        nil
    )
)
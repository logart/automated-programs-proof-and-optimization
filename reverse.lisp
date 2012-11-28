(defun myreverse (mylist)
  (
   if (true-listp mylist)
   (
     if (> (length mylist) 0)
      (append (myreverse (cdr mylist)) (list (car mylist)))
      '()
   )
      -1
   )
)
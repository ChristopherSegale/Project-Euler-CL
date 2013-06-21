;;;; Author: Christopher Segale
;;;; Date: 6/21/2013

(defun mult-sum-finder (limit mult1 mult2)
  (loop for i from 1 to limit
    if (or (= 0 (mod i mult1))
           (= 0 (mod i mult2)))
   sum i))

(defun problem001 ()
  (mult-sum-finder 999 3 5))

(defun main ()
  (format t "~a" (problem001)))

(main)

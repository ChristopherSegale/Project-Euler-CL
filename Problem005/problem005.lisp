;;;; Author: Christopher Segale
;;;; Date: 6/22/2013

(defun lcms (lower upper)
  (apply #'lcm (loop for i from lower to upper collect i)))

(defun problem005 ()
  (lcms 1 20))

(defun main ()
  (print (problem005)))

(main)

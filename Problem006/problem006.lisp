;;;; Author: Christopher Segale
;;;; Date: 6/22/2013

(defun squared (number)
  (* number number))

(defun sum-of-squares (lower upper)
  (loop for add from lower to upper
   sum (squared add)))

(defun problem006 ()
  (- (squared (apply #'+ (loop for i from 1 to 100 collect i))) (sum-of-squares 1 100)))

(defun main ()
  (print (problem006)))

(main)

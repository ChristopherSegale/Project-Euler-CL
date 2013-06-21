;;;; Author: Christopher Segale
;;;; Date: 6/21/2013
;;;; Incomplete

(defun is-prime (number)
  (if (= 1 number) (return-from is-prime NIL))
  (if (= 2 number) (return-from is-prime T))
  (loop for counter from 2 to (- number 1)
     if (= 0 (mod number counter))
   do (return-from is-prime NIL))
  (return-from is-prime T))

(defun problem003 ()
  (loop for factor from 1 to (/ 600851475143 2)
     if (is-prime factor)
   do (setf largest-prime-factor factor)))

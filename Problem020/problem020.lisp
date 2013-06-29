;;;; Author: Christopher Segale
;;;; Date: 6/29/2013

(defun factorial (n)
  (apply #'* (loop for m from n downto 1 collect m)))

(defun get-num (number place)
  (parse-integer (subseq (princ-to-string number) place (1+ place))))

(defun sum-digits (n)
  (let ((n-length (length (princ-to-string n))))
    (loop for d from 0 to (1- n-length)
      sum (get-num n d))))

(defun problem020 ()
  (sum-digits (factorial 100)))

(defun main ()
  (print (problem020)))

(main)

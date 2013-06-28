;;;; Author: Christopher Segale
;;;; Date: 6/27/2013

(defun get-digit (num-string place)
  (parse-integer (subseq num-string place (1+ place))))

(defun sum-of-digits (num)
  (let ((num-string (princ-to-string num)))
    (loop for n from 0 to (- (length num-string) 1)
      sum (get-digit num-string n))))

(defun problem016 ()
  (sum-of-digits (expt 2 1000)))

(defun main ()
  (print (problem016)))

(main)

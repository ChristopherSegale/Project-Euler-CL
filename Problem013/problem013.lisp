;;;; Author: Christopher Segale
;;;; Date: 6/27/2013

(defun get-list (file-name)
  (let ((in (open file-name :if-does-not-exist nil)))
    (if in
      (loop for line = (read-line in nil)
         while line collect (parse-integer line))
      (close in))))

(defun get-sum()
  (let ((numbers (get-list "numbers.txt")))

    (loop for n in numbers
      sum n)))

(defun problem013 ()
  (subseq (princ-to-string (get-sum)) 0 10))

(defun main ()
  (format t "~a" (problem013)))

(main)

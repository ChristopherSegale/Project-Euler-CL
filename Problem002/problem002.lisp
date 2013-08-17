;;;; Author: Christopher Segale
;;;; Date: 6/21/2013

(defun get-fibs (limit)
  (let ((fibs '(2 1)))
    (loop do
      (push (+ (nth 0 fibs) (nth 1 fibs)) fibs)
     while (< (+ (nth 0 fibs) (nth 1 fibs)) limit))
    (return-from get-fibs fibs)))

(defun problem002 ()
  (let ((fibs (get-fibs 4000000)))
    (loop for i in fibs
       if (evenp i)
     sum i)))

(defun main ()
  (format t "~a" (problem002)))

(main)

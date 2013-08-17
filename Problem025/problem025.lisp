;;;; Author: Christopher Segale
;;;; Date: 8/17/2013

(defun get-term (digit-limit)
  (let ((fibs '(1 1)))

    (do ((current-fib 2 (+ (elt fibs 0) (elt fibs 1))))
        ((> current-fib (expt 10 (1- digit-limit))))
      (push current-fib fibs))

    (return-from get-term (1+ (list-length fibs)))))

(defun problem025 ()
  (get-term 1000))

(defun main ()
  (format t "~a" (problem025)))

(main)

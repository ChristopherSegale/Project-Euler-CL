;;;; Author: Christopher Segale
;;;; Date: 6/25/2013
(defun is-pyth-triplet (a b c)
  (= (+ (* a a) (* b b)) (* c c)))


(defun problem009 ()
  (loop for a from 1 to (/ 1000 3) do
    (loop for b from a to (/ 1000 2) do
      (let ((c (- 1000 a b)))
        (if (is-pyth-triplet a b c)
          (return-from problem009 (* a b c)))))))

(defun main ()
  (print (problem009)))

(main)

;;;; Author: Christopher Segale
;;;; Date: 6/26/2013

(defun get-primes (limit)
  (setf candidates (loop for i from 2 to limit if (or (= i 2) (oddp i)) collect i))

  (loop for n in candidates
    while (< (* n n) limit) do
      (delete-if #'(lambda (f) (and (not (= f n)) (= 0 (mod f n)))) candidates))

  (return-from get-primes candidates))

(defun problem010 ()
  (setf primes (get-primes 2000000))

  (loop for i in primes
    sum i))

(defun main ()
  (print (problem010)))

(main)

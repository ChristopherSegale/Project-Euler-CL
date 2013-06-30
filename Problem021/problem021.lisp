;;;; Author: Christopher Segale
;;;; Date: 6/30/2013

(defun sum-divisors (n)
  (loop for d from 1 to (/ n 2)
    if (zerop (mod n d))
      sum d))

(defun get-amicable-pair (n)
  (let ((sum-one (sum-divisors n)))
    (let ((sum-two (sum-divisors sum-one)))
      (if (and (= n sum-two) (not (= n sum-one)))
        (return-from get-amicable-pair (list n sum-one))
        (return-from get-amicable-pair '(0 0))))))

(defun if-repeat (n my-list)
  (dolist (i my-list)
    (if (= n i)
      (return-from if-repeat t)))

  (return-from if-repeat nil))

(defun problem021 ()
  (setf amicable-pairs '())

  (do ((n 220 (1+ n)))                 ; 220 is the first amicable number
      ((>= n 10000))
    (let ((temp-pair (get-amicable-pair n)))
      (if (and (not (zerop (elt temp-pair 0))) (not (if-repeat n amicable-pairs)))
        (setf amicable-pairs (append amicable-pairs temp-pair)))))

  (return-from problem021 (apply #'+ amicable-pairs)))

(defun main ()
  (print (problem021)))

(main)

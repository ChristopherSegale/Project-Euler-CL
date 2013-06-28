;;;; Author: Christopher Segale
;;;; Date: 6/28/2013

(defun get-collatz-sequence (start)
  (if (= start 1)
    (return-from get-collatz-sequence '(1)))

  (setf collatz '())

  (loop while (> start 1) do
    (push start collatz)
    (if (evenp start)
      (setf start (/ start 2))
      (setf start(+ (* 3 start) 1))))

  (return-from get-collatz-sequence collatz))

(defun get-longest (limit)
  (if (zerop limit)
    (return-from get-longest 0))

  (setf longest 1)

  (do ((n 1 (1+ n)) (longest-length 1))
      ((>= n limit))
    (let ((temp-length (length (get-collatz-sequence n))))
      (if (< longest-length temp-length)
        (setf longest n longest-length temp-length))))

  (return-from get-longest longest))

(defun problem014 ()
  (get-longest 1000000))

(defun main ()
  (print (problem014)))

(main)

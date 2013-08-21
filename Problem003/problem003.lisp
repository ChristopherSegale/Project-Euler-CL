;;;; Author: Christopher Segale
;;;; Date: 8/20/2013

(defun primep (n)
  (if (= n 2)
    (return-from primep t)
    (progn
      (if (evenp n)
        (return-from primep nil)
        (progn
          (do ((f 3 (+ 2 f)))
              ((> f (isqrt n)))
            (if (zerop (mod n f))
              (return-from primep nil)))
          (return-from primep t))))))

(defun get-prime-factors (n)
  (let ((prime-factors '()))
    (do ((f 2 (1+ f)) (d n))
        ((> (* f f) d))
      (when (and (primep f) (zerop (mod n f)))
        (setf d (/ d f))
        (push f prime-factors)
        (when (primep d)
          (push d prime-factors)
          (return-from get-prime-factors prime-factors))))))

(defun largest-prime-factor (n)
  (first (get-prime-factors n)))

(defun problem003 ()
  (largest-prime-factor 600851475143))

(defun main ()
  (format t "~a" (problem003)))

(main)

;;;; Author: Christopher Segale
;;;; Date: 6/28/2013

(defun factorial (n)
  (apply #'* (loop for m from n downto 1 collect m)))

(defun choose (n r)
  (/ (factorial n) (* (factorial r) (factorial (- n r)))))

(defun problem015 ()
  (choose 40 20))

(defun main ()
  (print (problem015)))

(main)

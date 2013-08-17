;;;; Author: Christopher Segale
;;;; Date: 6/21/2013

(defun reverse-string (input-string)
  (if (eq (length input-string) 0)
    ""
    (concatenate 'string (reverse-string (subseq input-string 1)) (subseq input-string 0 1))))

(defun is-num-palindrome (number)
  (equal (write-to-string number) (reverse-string (write-to-string number))))

(defun problem004 ()
  (let ((palindrome 0))

    (do ((p1 100 (1+ p1)))
        ((>= p1 1000))
      (do ((p2 100 (1+ p2)))
          ((>= p2 1000))
        (if (and (is-num-palindrome (* p1 p2)) (< palindrome (* p1 p2)))
          (setf palindrome (* p1 p2)))))
    (return-from problem004 palindrome)))

(defun main ()
  (print (problem004)))

(main)

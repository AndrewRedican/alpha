;;; This file includes adapted examples originating from 
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(let ((s 'hello)) `(,s world)) ;; (HELLO WORLD)

(let ((s '(b c d))) `(a . ,s)) ;; (A B C D)
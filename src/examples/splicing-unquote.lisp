;;; This file includes adapted examples originating from 
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(let ((s '(b c d))) `(a ,@s e) ) ;; (A B C D E)
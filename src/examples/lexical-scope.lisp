;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.
 
(let ((x 2)) x) 

(let (a) 
  (scanf "%d" 
    (lambda (v) (setf a v))))
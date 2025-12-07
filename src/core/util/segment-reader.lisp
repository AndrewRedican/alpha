;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.
 
(in-package :alpha) 

(defun segment-reader (stream ch n) 
  (if (> n 0) 
    (let ((chars)) 
      (do 
        (
          (curr (read-char stream) (read-char stream))) ((char= ch curr)) (push curr chars)) 
      (cons 
        (coerce (nreverse chars) 'string) 
        (segment-reader stream ch (- n 1))) ) ) )
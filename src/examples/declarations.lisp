;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(defun register-allocated-fixnum () 
  (declare 
    (optimize (speed 3) (safety 0))) ; hinting compiler, optimization results in machine code where values stored in CPU registers, no pointers required. this is called 'tagging'
 
  (let ((acc 0)) 
    (loop for i from 1 to 100 do 
      (incf (the fixnum acc) (the fixnum i)) ) ) )
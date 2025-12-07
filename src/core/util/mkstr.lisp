;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defun mkstr (&rest args) "Return a string formed by concatenating the printed representation of ARGS." 
  (with-output-to-string (s) 
    (dolist (a args) (princ a s))))
;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defun symb (&rest args) "Return a symbol whose name is formed by concatenating ARGS." 
  (values 
    (intern (apply #'mkstr args))))
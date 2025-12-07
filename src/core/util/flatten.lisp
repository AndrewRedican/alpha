;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defun flatten (x) "Return a list of all atoms reachable in X, in left-to-right order." 
  (labels 
    ( 
      (rec (x acc) 
        (cond ((null x) acc) 
          ((atom x) (cons x acc)) 
          (t 
            (rec (car x) (rec (cdr x) acc)))))) (rec x nil)))
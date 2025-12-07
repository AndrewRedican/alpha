;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defun is-o-symbol (s) 
  (and (symbolp s) 
    (> 
      (length (symbol-name s)) 2) 
    (string= (symbol-name s) "O!" :start1 0 :end1 2 ) ))
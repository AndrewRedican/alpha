;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defun o!-symbol-to-g!-symbol (s) 
  (symb "G!" 
    (subseq (symbol-name s) 2)) )
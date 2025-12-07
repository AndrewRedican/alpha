;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defun fact (x) "Return the factorial of X. Defined as 0! = 1 and X! = X * (X-1)! for X > 0. This version assumes X is a non-negative integer." 
  (if (= x 0) 1 (* x (fact (- x 1)))))
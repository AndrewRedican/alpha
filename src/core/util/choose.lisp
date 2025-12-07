;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defun choose (n r) "Return the binomial coefficient C(n, r) = n! / ((n-r)! r!). Assumes N and R are non-negative integers and that R <= N." 
  (/ (fact n) (fact (- n r)) (fact r)))
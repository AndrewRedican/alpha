;;; This file includes adapted examples originating from 
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.
 
(in-package :alpha) 

(defmacro! nif (o!expr pos zero neg) `(cond 
  ((plusp ,g!expr) ,pos) 
  ((zerop ,g!expr) ,zero) (t ,neg)) )
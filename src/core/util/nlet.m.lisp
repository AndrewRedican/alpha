;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defmacro nlet (n letags &rest body) `(labels 
  ( 
    (,n, 
      (mapcar #'car letargs) ,@body)) 
  (,n, @ 
    (mapcar #' cadr letags))) )
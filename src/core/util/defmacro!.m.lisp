;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defmacro defmacro! 
  (name args &rest body) 
  (let* 
    (
      (os 
        (remove-if-not #'is-o-symbol args)) 
      (gs 
        (mapcar #'is-g-symbol os))) `(defmacro/g! ,name ,args `(let ,
    (mapcar #'list (list ,@gs) (list ,@os)) ,(progn ,@body))) ) )
;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defmacro defmacro/g! 
  (name args &rest body) 
  (let 
    (
      (syms 
        (remove-duplicates 
          (remove-if-not #'is-g-symbol (flatten body))))) `(defmacro ,name ,args 
    (let ,
      (mapcar 
        (lambda (s) `(, s 
          (gensym ,
            (subseq (symbol-name s) 2)))) syms) ,@body) ) ) )
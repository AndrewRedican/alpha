
(in-package :alpha) 

(defun hello 
  (&optional (name "world")) "Say hello to NAME (default: world)." 
  (format t "Hello, ~a from project Alpha!~%" name)) 

(defun main () "Entry point for the program." (hello))
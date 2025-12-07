;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(defvar temp-special) ; OR (defvar *temp-special*) using earmuff conventional, completely optional.
 
(setq temp-special 1) 

(defun temp-special-returner () temp-special) ; function has access to variable, returns 1
 
(let ((temp-special 2)) 
  (temp-special-returner) ; lexical scope takes over, returns 2

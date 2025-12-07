;;; This file includes adapted examples originating from 
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(let 
  (
    (let '`(let ((let ',let)) ,let))) `(let 
((let ',let)) ,let) )
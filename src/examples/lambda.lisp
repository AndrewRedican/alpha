;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(function '(lambda (x) (+ 1 x)))

; #' called sharp-quote convenience abbreviation
#'(lambda (x) (+ 1 x))

; lambda as defined in Common Lisp is also a macro
(defmacro lambda (&whole from &rest body)
  (declare (ignore body))
  '#', from)

; evaluates function designators to create functions
(lambda (x) (+ 1 x))

; when lambda forms found as first argument, assumed to represent anonymous function
((lambda (x) (+ 1 x)) 2) 

; use funcall or apply to evaluate lambda function
; compiler will know this function always returns 3 and will simply return that number directly, this is called lambda folding
(defun compiler-test ()
  (funcall
    (lambda (x) (+ 1 x))
    2))
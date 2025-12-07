

(defpackage :alpha (:use :cl :uiop) 
  (
    :export
    :mkstr
    :symb
    :clear-screen
    :group
    :flatten
    :fact
    :choose
    :time-unit
    :nlet
    :is-g-symbol
    :is-o-symbol
    :o!-symbol-to-g!-symbol
    :defmacro/g!
    :defmacro!
    :segment-reader
    :nif
    :|#"-reader|
    :|#>-reader|

    :hello
    :main
  ))
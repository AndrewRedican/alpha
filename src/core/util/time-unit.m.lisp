;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defmacro time-unit(value unit) `(* , value , 
  (case unit ((s) 1) ((m) 60) ((h) 3600) ((d) 86400) ((ms) 1 / 1000) ((us) 1 / 1000000))))
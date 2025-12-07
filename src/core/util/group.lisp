;;; This file includes adapted examples originating from
;;; "Let Over Lambda" (Doug Hoyte). See ATTRIBUTIONS.md.

(in-package :alpha) 

(defun group (source n) "Return a list of sublists of SOURCE, each of length N except possibly the last. Signal an error if N is zero." 
  (when (zerop n) 
    (error "GROUP: N must be positive, got 0.")) 
  (labels 
    ( 
      (rec (source acc) 
        (let 
          ( 
            (rest (nthcdr n source))) 
          (if (consp rest) 
            (rec rest 
              (cons (subseq source 0 n) acc)) 
            (nreverse (cons source acc)))))) 
    (if source (rec source nil) nil)))
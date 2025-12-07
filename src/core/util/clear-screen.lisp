
(in-package :alpha) 

(defun %ansi-terminal-p () "Heuristic detection of ANSI capability." 
  (let 
    ( 
      (term 
        (string-downcase 
          (or (uiop:getenv "TERM") "")))) 
    (or (search "xterm" term) (search "ansi" term) (search "vt" term) ; vt100, vt220, etc.
 
      (search "screen" term) ; tmux / screen
 (search "linux" term) (search "rxvt" term)))) 

(defun %clear-ansi (stream) "Clear screen + scrollback using ANSI control codes." 
  (format stream "~c[3J~c[H~c[2J" #\Escape #\Escape #\Escape) 
  (finish-output stream)) 

(defun %clear-fallback (stream) "Portable newlines fallback." 
  (dotimes (_ 50) (terpri stream)) 
  (finish-output stream)) 

(defun clear-screen 
  (&optional 
    (stream *standard-output*)) "Future-proof screen clear: prefers ANSI, falls back cleanly." 
  (if (%ansi-terminal-p) (%clear-ansi stream) 
    (%clear-fallback stream)))


(asdf:defsystem "alpha" :description "Alpha - a learning Common Lisp project" :version "0.0.1" :serial t :pathname "src/" :components 
  ( 
    (:module "core" :serial t :components 
      ( (:file "package") 
        (:module "util" :serial t :components 
          ( 
            (:file "mkstr" :depends-on ()) 
            (:file "symb" :depends-on ()) 
            (:file "clear-screen" :depends-on ()) 
            (:file "group" :depends-on ()) 
            (:file "flatten" :depends-on ()) 
            (:file "fact" :depends-on ()) 
            (:file "choose" :depends-on ("fact")) 
            (:file "time-unit.m" :depends-on ()) 
            (:file "nlet.m" :depends-on ()) 
            (:file "is-g-symbol" :depends-on ()) 
            (:file "is-o-symbol" :depends-on ()) 
            (:file "o-symbol-to-g-symbol" :depends-on ("symb")) 
            (:file "defmacro-g.m" :depends-on ("flatten")) 
            (:file "defmacro!.m" :depends-on 
              ("is-o-symbol" "is-g-symbol" "defmacro-g.m")) 
            (:file "nif.m" :depends-on ("defmacro!.m")) 
            (:file "sharp-double-quote" :depends-on ()) 
            (:file "sharp-greater-than" :depends-on ()) 
            (:file "segment-reader" :depends-on ()) ) ))) 
;; src/main.lisp – main entry point
 (:file "main")))
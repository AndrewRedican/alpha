# alpha

**alpha** is a small Common Lisp project built with SBCL, Quicklisp, and GitHub Codespaces.  
It exists mainly as a learning environment to explore Lisp and REPL-driven development.

---

## Getting Started

### Using in GitHub Codespaces

1. Open this repo in a Codespace.
2. The dev container builds automatically using:
   - `clfoundation/sbcl:2.5.11-rc-trixie`
   - Quicklisp installed via the install script

No manual setup is needed after the container builds.

### Run Project

~~~bash
sbcl --load dev.lisp
~~~

### After editing code

Re-load the system:

~~~bash
(ql:quickload :alpha)
~~~

---

## Project Structure

~~~
alpha/
  src/
    core/
      package.lisp      ; Defines the :alpha package
      util/**/*.lisp    ; Defines useful code utilities
  main.lisp         ; Core project code
  alpha.asd           ; ASDF system definition
  dev.lisp            ; Optional helper to load the project
  .devcontainer/      ; Codespaces configuration
  .vscode/            ; Editor settings
~~~

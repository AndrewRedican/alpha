#!/usr/bin/env bash
PROJECT_DIR="$(pwd)"

set -euo pipefail

echo "[install-quicklisp] Installing tools..."
apt-get update
apt-get install -y --no-install-recommends curl git rlwrap
rm -rf /var/lib/apt/lists/*

cd /tmp

echo "[install-quicklisp] Downloading Quicklisp..."
curl -O https://beta.quicklisp.org/quicklisp.lisp

echo "[install-quicklisp] Installing Quicklisp..."
sbcl --non-interactive \
  --load quicklisp.lisp \
  --eval '(quicklisp-quickstart:install :path (merge-pathnames "quicklisp/" (user-homedir-pathname)))' \
  --eval '(quit)'

rm quicklisp.lisp

# Add Quicklisp to ~/.sbclrc without prompting
SBCLRC="${HOME}/.sbclrc"
echo "[install-quicklisp] Ensuring ${SBCLRC} loads Quicklisp..."
mkdir -p "$(dirname "$SBCLRC")"

if ! grep -q 'quicklisp/setup.lisp' "$SBCLRC" 2>/dev/null; then
  cat >> "$SBCLRC" <<'EOF'

;; Load Quicklisp automatically
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))
EOF
fi

echo "[install-quicklisp] Done."

# Copy repo .sbclrc into $HOME so SBCL uses it
if [ -f "$PROJECT_DIR/.sbclrc" ]; then
  cp "$PROJECT_DIR/.sbclrc" "$HOME/.sbclrc"
fi
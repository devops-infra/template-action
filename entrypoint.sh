#!/usr/bin/env bash
set -Eeuo pipefail

# Optional debug logging: pass `debug: true` in the action inputs to enable
[[ "${INPUT_DEBUG:-false}" == "true" ]] && set -x

#shellcheck disable=SC2317
info()  { printf "[INFO] %s\n" "$*"; }
warn()  { printf "[WARN] %s\n" "$*" >&2; }
error() { printf "[ERROR] %s\n" "$*" >&2; }

trap 'error "Action failed. Check logs above."' ERR

# Inputs
FOOBAR="${INPUT_FOOBAR:-}"
GITHUB_TOKEN="${INPUT_GITHUB_TOKEN:-}"

info "Inputs:"
info "  foobar: ${FOOBAR:+<set>}${FOOBAR:-<empty>}"
if [[ -n "${GITHUB_TOKEN}" ]]; then
  info "  github_token: <hidden>"
else
  info "  github_token: <empty>"
fi

# Require github_token if your action needs it (uncomment to enforce)
# if [[ -z "${GITHUB_TOKEN}" ]]; then
#   error "Missing input 'github_token: \${{ secrets.GITHUB_TOKEN }}'."
#   exit 1
# fi

# Main action logic (placeholder)
info "Using input 'foobar' in main action."
# ... your action logic goes here ...

# Helper to write outputs (works locally and on GitHub runners)
write_output() {
  local kv="$1"
  if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
    printf "%s\n" "${kv}" >> "${GITHUB_OUTPUT}"
  else
    info "[LOCAL] output -> ${kv}"
  fi
}

# Set outputs
write_output "foobar=${FOOBAR}"
write_output "barfoo=${FOOBAR}"

info "Completed without errors."
exit 0

#!/usr/bin/env bash

set -Eeuo pipefail

# Return code
RET_CODE=0

# Optional debug logging: pass `debug: true` in the action inputs to enable
[[ "${INPUT_DEBUG:-false}" == "true" ]] && set -x

info()  { printf "[INFO] ℹ️ %s\n" "$*"; }
#shellcheck disable=SC2329
warn()  { printf "[WARN] ⚠️ %s\n" "$*" >&2; }
#shellcheck disable=SC2329
error() { printf "[ERROR] ❌ %s\n" "$*" >&2; }

write_output() {
  local kv="$1"
  if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
    printf "%s\n" "${kv}" >> "${GITHUB_OUTPUT}"
  else
    info "[LOCAL] output -> ${kv}"
  fi
}

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

# Set outputs
write_output "foobar=${FOOBAR}"
write_output "barfoo=${FOOBAR}"

info "Completed without errors."
exit ${RET_CODE}

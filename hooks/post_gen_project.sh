#!/usr/bin/env bash

# Enable xtrace if the DEBUG environment variable is set
if [[ ${DEBUG-} =~ ^1|yes|true$ ]]; then
    set -o xtrace # Trace the execution of the script (debug)
fi

# Only enable these shell behaviours if we're not being sourced
# Approach via: https://stackoverflow.com/a/28776166/8787985
if ! (return 0 2>/dev/null); then
    # A better class of script...
    set -o errexit  # Exit on most errors (see the manual)
    set -o nounset  # Disallow expansion of unset variables
    set -o pipefail # Use last non-zero exit code in a pipeline
fi

# Enable errtrace or the error trap handler will not work as expected
set -o errtrace # Ensure the error trap handler is inherited

# Log the given message at the given level. All logs are written to stderr with a timestamp.
function log {
    local -r level="$1"
    local -r message="$2"
    local -r timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    local -r script_name="$(basename "$0")"
    echo >&2 -e "${timestamp} [${level}] [$script_name] ${message}"
}

# Log the given message at INFO level. All logs are written to stderr with a timestamp.
function log_info {
    local -r message="$1"
    log "INFO" "$message"
}

# Log the given message at WARN level. All logs are written to stderr with a timestamp.
function log_warn {
    local -r message="$1"
    log "WARN" "$message"
}

# Log the given message at ERROR level. All logs are written to stderr with a timestamp.
function log_error {
    local -r message="$1"
    log "ERROR" "$message"
}

# configure git
log_info "initializing git"
git init --quiet

# commit the intial stuff with a proper emoji defaults
log_info "committing intial repo stuff"
git add .
git commit --quiet -m "🎉 inital project creation from template"

log_info "configuring git hooks for using gitmoji"
if command -v gitmoji >/dev/null; then
    gitmoji -i
else
    log_warn "installing gitmoji"
    # will break if npm isn't configured - if it is its okay - make the userfix it :P
    npm i -g gitmoji
    gitmoji -i
fi

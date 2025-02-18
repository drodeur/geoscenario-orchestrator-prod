#!/usr/bin/env bash
# set -e

if [[ ${BASH_SOURCE[0]} == "${0}" ]]; then
    echo "This script should be sourced, not executed."
    echo "Try running: source $0"
    exit 1
fi

micromamba activate gss

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export ORCHESTRATOR_ROOT=${SCRIPT_DIR}
export SERVER_ROOT=${SCRIPT_DIR}/geoscenarioserver
export VIOLATION_REPORT_FOLDER=${ORCHESTRATOR_ROOT}/results


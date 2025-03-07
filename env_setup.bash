if [[ ${BASH_SOURCE[0]} == "${0}" ]]; then
    echo "This script should be sourced, not executed."
    echo "Try running: source $0"
    exit 1
fi

# Use MAMBA_EXE variable so that it works with either micromamba or mamba
if [[ -z ${MAMBA_EXE} ]]; then
    echo "micromamba not installed or not activated."
    echo "Follow the instructions https://mamba.readthedocs.io/en/latest/installation/micromamba-installation.html"
    exit 1
fi

micromamba activate gss

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export ORCHESTRATOR_ROOT=${SCRIPT_DIR}
echo "ORCHESTRATOR_ROOT=${ORCHESTRATOR_ROOT}"
export SERVER_ROOT=${SCRIPT_DIR}/geoscenarioserver
echo "SERVER_ROOT=${SERVER_ROOT}"
export GSS_OUTPUTS=${ORCHESTRATOR_ROOT}/results
echo "GSS_OUTPUTS=${GSS_OUTPUTS}"

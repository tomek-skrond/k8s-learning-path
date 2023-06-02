#!/bin/bash

WORKDIR=$(pwd)
EDITOR=nano

sudo ln -s /usr/local/bin/namespaces-docs ${WORKDIR}/docs/namespaces/namespaces.md
sudo ln -s /usr/local/bin/helm-docs ${WORKDIR}/docs/helm/helm.md
sudo ln -s /usr/local/bin/deployments-docs ${WORKDIR}/docs/deployments/deployments.md

#docs aliases
alias namespaces-docs="cat /usr/local/bin/namespaces-docs"
alias helm-docs="cat /usr/local/bin/helm-docs"
alias deployments-docs="cat /usr/local/bin/deployments-docs"

alias namespaces-docs-edit="${EDITOR} /usr/local/bin/namespaces-docs"
alias helm-docs-edit="${EDITOR} /usr/local/bin/helm-docs"
alias deployments-docs-edit="${EDITOR} /usr/local/bin/deployments-docs"



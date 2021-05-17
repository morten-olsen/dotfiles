export NPM_TOKEN="${NPM_TOKEN:-unset}"
export GITHUB_NPM_TOKEN="${GITHUB_NPM_TOKEN:-${GH_TOKEN:-unset}}"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

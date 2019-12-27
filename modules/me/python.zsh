# pyenv path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pipenv setting
export PIPENV_VENV_IN_PROJECT=true

# poetry
source $HOME/.poetry/env
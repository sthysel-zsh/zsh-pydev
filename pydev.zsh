export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# for pip install --user
export PATH=$PATH:$HOME/.local/bin/


# Find python file
alias pyfind='find . -name "*.py"'

# Grep among .py files
alias pygrep='grep --include="*.py"'

# Remove python compiled byte-code in either current directory or in a
# list of specified directories
function pyclean() {
    ZSH_PYCLEAN_PLACES=${*:-'.'}
    find ${ZSH_PYCLEAN_PLACES} -type f -name "*.py[co]" -delete
    find ${ZSH_PYCLEAN_PLACES} -type d -name "__pycache__" -delete
}


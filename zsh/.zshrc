export ZSH="$HOME/.oh-my-zsh"
export CUSTOM_ZSH="$HOME/config/zsh"

ZSH_THEME="robbyrussell"
ZSH_CUSTOM=$CUSTOM_ZSH

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
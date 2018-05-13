export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/Users/alexbezuska/PostgreSQL/pg10/bin:$PATH

alias la="ls -la"
unity="/Applications/Unity/Unity.app/Contents/MacOS/Unity"
unity(){
  "$unity" -projectPath "$1" &
}
alias pyserv="python -m SimpleHTTPServer 8000"
alias gpr="git pull --rebase"

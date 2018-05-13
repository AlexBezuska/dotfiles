alias la="ls -la"
unity="/Applications/Unity/Unity.app/Contents/MacOS/Unity"
unity(){
  "$unity" -projectPath "$1" &
}
alias pyserv="python -m SimpleHTTPServer 8000"

alias la='ls -la'
alias ll='ls -l'
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gl='git log'
ld5 () { md5sum "$1" | tee "$1.md5"; }

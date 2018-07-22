export LC_ALL=C
export LESSCHARSET=utf-8

alias gits='clear;git status'
alias gitp='git push origin HEAD'

# Loads the default ruby and appends stderr to stdout
if test -z $rvm_bin_path
  exec bash --login -c "exec fish" ^&1
end

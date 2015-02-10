# PATH Environment Variable Additions
export PATH=/Applications/apache-maven-3.2.5/bin:$PATH
export PATH=/Applications/apache-tomcat-7.0.57/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH=/Applications/sonar-runner-2.4/bin:$PATH

# New Environment Variables
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
export CATALINA_HOME=/Applications/apache-tomcat-7.0.57/bin
export M2_HOME=/Applications/apache-maven-3.2.5
export M2=/Applications/apache-maven-3.2.5/bin

# Generic Aliases
alias ll="ls -lhA"
alias sublime="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Work Aliases
function up() {
  if [ "$1" == "cloud" ]
    then
      batch_exec "clean" "cd src/" "clean" "cd .." "grunt" "grunt server"
  fi
}

# Generic Functions
function clean() {
  if [ -a $PWD/package.json ]
    then
      batch_exec "npm prune" "npm cache clean" "npm install"
  fi
  if [ -a $PWD/bower.json ]
    then
      batch_exec "bower prune" "bower cache clean" "bower install"
  fi
}

function batch_exec() {
  for i in "${@}"
  do
    echo "Starting [$i]"
    eval "$i"
    echo "Finished [$i]"
  done
}

# Add git branch name for current directory
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\033[34m\]\u\[\033[32m\]@\[\033[34m\]\h \[\033[39m\]\w\[\033[35m\]\$(parse_git_branch)\[\033[00m\] \n$ "

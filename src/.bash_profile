# PATH Environment Variable Additions
export PATH=/Applications/apache-maven-3.2.5/bin:$PATH
export PATH=/Applications/apache-tomcat-7.0.57/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

# New Environment Variables
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
export CATALINA_HOME=/Applications/apache-tomcat-7.0.57/bin
export M2_HOME=/Applications/apache-maven-3.2.5
export M2=/Applications/apache-maven-3.2.5/bin

# Add Aliases
alias ll="ls -lhA"

function clean() {
  if [ -a $PWD/package.json ]
    then
      echo "Running npm prune..."
      npm prune
      echo "Running npm cache clean..."
      npm cache clean
      echo "Running npm install..."
      npm install
  fi
  if [ -a $PWD/bower.json ]
    then
      echo "Running bower prune..."
      bower prune
      echo "Running bower cache clean..."
      bower cache clean
      echo "Running bower install..."
      bower install
  fi
}

# Add git branch name for current directory
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u \[\033[32m\]@ \[\033[39m\]\h \[\033[36m\]\w\[\033[35m\]\$(parse_git_branch)\[\033[00m\] \n$ "

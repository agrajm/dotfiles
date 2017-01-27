# Path to your oh-my-zsh installation.
export ZSH=/Users/amangal/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# MacPorts & the Shell - https://guide.macports.org/chunked/installing.shell.html
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export PATH=~/anaconda/bin:$PATH

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export NVM_DIR="/Users/amangal/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Export JAVA_HOME
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

# Add Maven to Path
export M2_HOME=/usr/local/apache-maven/apache-maven-3.3.9
export M2=$M2_HOME/bin
export PATH="$PATH:$M2"
# Maven Opts
export MAVEN_OPTS="-Xmx1024M -XX:MaxPermSize=512M"

# Other Environment Variables
export SCALA_HOME="/usr/local/scala-2.10.4"
export PATH="$PATH:$SCALA_HOME/bin"
export SPARK_HOME="/usr/local/spark-1.6.1-bin-spark-1.6.1"
export HADOOP_HOME="/usr/local/hadoop-2.7.1"

#Add Hadoop libraries & Spark to Path
export PATH="$PATH:$HADOOP_HOME/bin:$SPARK_HOME/bin"

# Environment Variable for Blender to Run
# The BLENDER_WORKSPACE_DIR should normally point to the location on the filesystem where you have saved the Logs and kept local Catalog file
# But for Running Unit Test cases it should point to Sparkle root directory -- So run alias run_blender_test_cases before running mvn clean test
# export BLENDER_WORKSPACE_DIR=file:///Users/amangal/Documents/office/data/mcdp/
export BLENDER_WORKSPACE_DIR=file:///Users/amangal/git/sparkle/sparkle/
export CATALOG_URL=file:///Users/amangal/git/sparkle/sparkle/launcher/src/test/resources/testPipeline.json
export MODE=DEV

# Dotfiles dconfig
alias dconfig='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
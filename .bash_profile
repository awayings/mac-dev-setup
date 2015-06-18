# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Enable bash vi mode input
set -o vi

# Set Env Vars
#export M2_HOME=/usr/local/Cellar/maven30/3.0.5/libexec
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
#export JAVA_OPTS="-Xms756m -Xmx756m -Xss128m -Xmn512m"


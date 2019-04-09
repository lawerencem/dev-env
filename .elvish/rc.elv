E:VISUAL = nvim
E:EDITOR = $E:VISUAL
E:GIT_EDITOR = $E:EDITOR

# Homebrew
E:PATH = "/usr/local/bin:"$E:PATH

E:HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
E:HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar"
E:HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew"
E:PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:"$E:PATH
E:MANPATH="/home/linuxbrew/.linuxbrew/share/man:"$E:MANPATH
E:INFOPATH="/home/linuxbrew/.linuxbrew/share/info:"$E:INFOPATH


# Xquartz
E:PATH = $E:PATH":/opt/X11/bin:"

# Rust
E:PATH = $E:PATH":"$E:HOME"/.cargo/bin"

# Go
E:PATH = $E:PATH":/usr/local/go/bin:"$E:HOME"/go/bin:"
E:GOPATH = ""$E:HOME"/go"

# Ruby
E:PATH = "/usr/local/opt/ruby/bin:"$E:HOME"/gems/bin:"$E:PATH
E:GEM_HOME = ""$E:HOME"/gems"

# Fzf
E:PATH = $E:PATH":"$E:HOME"/.fzf/bin"

use re
use readline-binding

use epm
epm:install &silent-if-installed=$true \
  github.com/zzamboni/elvish-completions \
  github.com/iwoloschin/elvish-packages \
  github.com/xiaq/edit.elv \
  github.com/muesli/elvish-libs

use github.com/xiaq/edit.elv/smart-matcher
smart-matcher:apply

use github.com/zzamboni/elvish-completions/cd
use github.com/zzamboni/elvish-completions/ssh
use github.com/zzamboni/elvish-completions/builtins

edit:insert:binding[Ctrl-b] = $edit:move-dot-left-word~
edit:insert:binding[Ctrl-f] = $edit:move-dot-right-word~
edit:insert:binding[Ctrl-g] = $edit:location:start~
edit:insert:binding[Ctrl-n] = $edit:navigation:start~

fn dg [@a]{ git --git-dir=$E:HOME/.dev-env.git/ --work-tree=$E:HOME $@a }

fn grep [@a]{ e:grep --color=auto $@a }
fn l [@a]{ e:exa $@a }
fn ll [@a]{ e:exa --long $@a }
fn vi [@a]{ nvim $@a }
fn vim [@a]{ nvim $@a }

# git
#use github.com/zzamboni/elvish-completions/git
#git:git-command = hub
#git:init
fn g [@a]{ git $@a }
fn gs [@a]{ git status -s $@a }
fn gco [@a]{ git checkout $@a }
fn gcp [@a]{ git checkout --patch $@a }
fn gr [@a]{ git rebase -i $@a }
fn ga [@a]{ git add -p $@a }
fn gcm [@a]{ git commit $@a }
fn gb [@a]{ git branch $@a }
fn gpl [@a]{ git pull $@a }
fn gps [@a]{ git push $@a }
fn gl [@a]{ git log $@a }
fn gg [@a]{ git log --graph --decorate --oneline --simplify-by-decoration}
fn gfg [@a]{ git log --all --graph --decorate --oneline --simplify-by-decoration}

# python virtualenv
use github.com/iwoloschin/elvish-packages/python
fn activate [@a]{ python:activate $@a }
fn deactivate { python:deactivate }

fn cppdirswatch [@a]{
    watchman-make -p \
        'CMakeLists.txt' \
        'include/**/*.h' \
        'lib/**/*.cpp' \
        'lib/**/*.h' \
        'lib/**/CMakeLists.txt' \
        'src/**/*.cpp' \
        'src/**/*.h' \
        'src/**/CMakeLists.txt' \
        'test/**/*.cpp' \
        'test/**/*.h' \
        'test/**/CMakeLists.txt' \
        --run $@a
}

fn cppwatch [@a]{
    watchman-make -p \
        '**/*.cpp' \
        '**/*.h' \
        '**/*.c' \
        '**/*.inl' \
        '**/CMakeLists.txt' \
        --run $@a
}

fn pywatch [@a]{
    watchman-make -p '**/*.py' --run $@a
}

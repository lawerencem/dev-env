E:VISUAL = nvim
E:EDITOR = $E:VISUAL
E:GIT_EDITOR = $E:EDITOR
E:PATH = /usr/local/bin:$E:PATH":/opt/X11/bin:"$E:HOME"/.cargo/bin:/usr/local/go/bin:"$E:HOME"/go/bin:"$E:HOME"/.fzf/bin"
E:GOPATH = ""$E:HOME"/go"

use re
use readline-binding

use epm
epm:install &silent-if-installed=$true   \
  github.com/zzamboni/elvish-completions \
  github.com/xiaq/edit.elv               \
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

fn kavi [@a]{ ssh -Y jiv52755@kjivan $@a }
fn abby [@a]{ ssh -Y jiv52755@absegar $@a }
fn alex [@a]{ ssh -Y jiv52755@ger-tor59451-linux-1 $@a }
fn devon [@a]{ ssh -Y jiv52755@gar62155-ubuntu $@a }
fn shawn [@a]{ ssh -Y jiv52755@ger-snicholson $@a }
fn parth [@a]{ ssh -Y jiv52755@ger72631 $@a }
fn catan [@a]{ ssh -Y jiv52755@ger-catan $@a }

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
fn gl [@a]{ git log @a }
fn gg [@a]{ git log --graph --decorate --oneline --simplify-by-decoration}
fn gfg [@a]{ git log --all --graph --decorate --oneline --simplify-by-decoration}

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

fn scc-recursive [@a]{
    files = (find "$argv")

    echo $files
#    for file $files {
#        if string match -r -q '\.h$|\.c$|\.cpp$|\.inl$' $file {
#            scc $file > $file.scc
#            mv $file.scc $file
#        }
#    }
}



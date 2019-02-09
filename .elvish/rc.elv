E:VISUAL = nvim
E:EDITOR = $E:VISUAL
E:GIT_EDITOR = $E:EDITOR
E:PATH = $E:PATH":"$E:HOME"/.cargo/bin:/usr/local/go/bin:"$E:HOME"/go/bin"
E:GOPATH = ""$E:HOME"/go"

fn dg [@a]{ git --git-dir=$E:HOME/.dev-env.git/ --work-tree=$E:HOME $@a }

fn kavi [@a]{ ssh -Y jiv52755@kjivan }
fn abby [@a]{ ssh -Y jiv52755@absegar }
fn alex [@a]{ ssh -Y jiv52755@ger-tor59451-linux-1 }
fn devon [@a]{ ssh -Y jiv52755@gar62155-ubuntu }
fn shawn [@a]{ ssh -Y jiv52755@ger-snicholson }
fn parth [@a]{ ssh -Y jiv52755@ger72631 }
fn catan [@a]{ ssh -Y jiv52755@ger-catan }

fn grep [@a]{ e:grep --color=auto $@a }
fn l [@a]{ e:exa $@a }
fn ll [@a]{ e:exa --long $@a }
fn ls [@a]{ e:ls --color=auto $@a }
fn vi [@a]{ nvim $@a }
fn vim [@a]{ nvim $@a }
fn g [@a]{ git $@a }

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



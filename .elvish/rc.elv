E:VISUAL = nvim
E:EDITOR = $E:VISUAL
E:GIT_EDITOR = $E:EDITOR

fn dg [@a]{ e:/usr/bin/git --git-dir=$E:HOME/.dev-env.git/ --work-tree=$E:HOME $@a }


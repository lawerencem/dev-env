function gcb
  git stash
  git checkout Development
  git pull
  git stash pop
  git checkout -b $argv
  git push --set-upstream origin $argv
end


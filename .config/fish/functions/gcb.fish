function gcb
  git checkout Development
  git stash
  git pull
  git stash pop
  git checkout -b $argv
  git push --set-upstream origin $argv
end


function gcb

  set stashed 0
  if count (git diff HEAD) > /dev/null
    git stash
    set stashed 1
  end

  git checkout develop
  git pull

  if test $stashed -eq 1
    git stash pop
  end

  git checkout -b $argv
  git push --set-upstream origin $argv
end


function pywatch
    watchman-make -p '**/*.py' --run "$argv"
end

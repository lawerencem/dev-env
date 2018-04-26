function cppwatch
    watchman-make -p '**/*.cpp' '**/*.h' '**/CMakeLists.txt' --run "$argv"
end

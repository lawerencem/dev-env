function cppwatch
    watchman-make -p \
        '**/*.cpp' \
        '**/*.h' \
        '**/*.c' \
        '**/*.inl' \
        '**/CMakeLists.txt' \
        --run "$argv"
end

function cppdirswatch
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
    --run "$argv"
end

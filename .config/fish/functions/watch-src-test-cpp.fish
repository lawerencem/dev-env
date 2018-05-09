function watch-src-test-cpp
    watchman-make -p 'CMakeLists.txt' 'src/**/*.cpp' 'src/**/*.h' 'src/**/CMakeLists.txt' 'test/**/*.cpp' 'test/**/*.h' 'test/**/CMakeLists.txt' --run "$argv"
end

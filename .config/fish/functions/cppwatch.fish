# Defined in /tmp/fish.TrvMLb/cppwatch.fish @ line 2
function cppwatch
	watchman-make -p '**/*.cpp' '**/*.h' '**/CMakeLists.txt' --run "$argv"
end

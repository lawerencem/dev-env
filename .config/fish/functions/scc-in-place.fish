function scc-in-place
    set files (find "$argv")

    for file in $files
        if test -n string match -r '.h' $file
            echo $file
        end
    end
end

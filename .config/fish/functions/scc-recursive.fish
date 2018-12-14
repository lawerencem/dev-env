function scc-recursive
    set files (find "$argv")

    for file in $files
        if string match -r -q '\.h$|\.c$|\.cpp$|\.inl$' $file
            scc $file > $file.scc
            mv $file.scc $file
        end
    end
end

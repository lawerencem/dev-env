function runsudo --description 'Run current command line as root'
    commandline -C 0
    commandline -i 'sudo '
    commandline -f execute
end

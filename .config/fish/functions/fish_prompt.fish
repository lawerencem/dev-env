function fish_prompt --description 'Write out the prompt'
    printf '%s%s@%s%s %s%s%s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

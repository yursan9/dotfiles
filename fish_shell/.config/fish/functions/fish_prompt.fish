function fish_prompt
    set -l __last_command_exit_status $status

    # Color Configuration
    set -l cyan (set_color -o cyan)
    set -l yellow (set_color -o yellow)
    set -l red (set_color -o red)
    set -l green (set_color -o green)
    set -l blue (set_color -o blue)
    set -l magenta (set_color -o magenta)
    set -l normal (set_color normal)

    # Git Prompt Configuration
    set -g __fish_git_prompt_showcolorhints true
    set -g __fish_git_prompt_showdirtystate true
    set -g __fish_git_prompt_showstashstate true
    set -g __fish_git_prompt_showupstream auto

    set -l arrow_color "$magenta"
    if test $__last_command_exit_status != 0
        set arrow_color "$red"
    end

    set -l arrow "$arrow_color❯"
    if test "$USER" = 'root'
        set arrow "$arrow_color# "
    end

    set -g fish_prompt_pwd_dir_length 0
    set -l cwd $cyan(prompt_pwd)

    echo ' '
    echo -s $cwd (__fish_git_prompt " %s")
    echo -n -s $arrow $normal ' '
end

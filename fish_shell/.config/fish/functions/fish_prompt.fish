function fish_prompt
    set -l __last_command_exit_status $status

    if not set -q -g __fish_robbyrussell_functions_defined
        set -g __fish_robbyrussell_functions_defined
        function _git_branch_name
            set -l branch (git symbolic-ref --quiet HEAD ^/dev/null)
            if set -q branch[1]
                echo (string replace -r '^refs/heads/' '' $branch)
            else
                echo (git rev-parse --short HEAD ^/dev/null)
            end
        end

        function _is_git_dirty
            echo (git status -s --ignore-submodules=dirty ^/dev/null)
        end
    end

    set -l cyan (set_color -o cyan)
    set -l yellow (set_color -o yellow)
    set -l red (set_color -o red)
    set -l green (set_color -o green)
    set -l blue (set_color -o blue)
    set -l normal (set_color normal)

    set -l arrow_color "$green"
    if test $__last_command_exit_status != 0
        set arrow_color "$red"
    end

    set -l arrow "$arrow_color➜ "
    if test "$USER" = 'root'
        set arrow "$arrow_color# "
    end

    set -g fish_prompt_pwd_dir_length 0
    set -l cwd $cyan(prompt_pwd)

    set -l repo_branch $red(_git_branch_name $repo_type)
    set repo_info "$blue $repo_type:($repo_branch$blue)"

    if [ (_is_git_dirty) ]
	set -l dirty "$yellow ✗"
	set repo_info "$repo_info$dirty"
    end

    echo ' '
    echo -s $cwd ' ' $repo_branch $normal ' '
    echo -n -s $arrow
end

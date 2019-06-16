function fish_prompt
    set -l last_command_exit_status $status

    # Color Configuration
    set -l dir_color (set_color $fish_color_cwd)
    set -l color_normal (set_color $fish_color_normal)
    set -l git_color (set_color $fish_color_normal)
    set -l prompt_color (set_color $fish_color_command)
    set -l git_dirty_color (set_color brred)
    set -l git_staged_color (set_color green)

	# Change color on error
    if test $last_command_exit_status != 0
    	set dir_color (set_color $fish_color_error)
    	set color_normal (set_color $fish_color_error)
    	set git_color (set_color $fish_color_error)
    	set prompt_color (set_color $fish_color_error)
    end

    # Prompt Configuration
    set -g fish_prompt_pwd_dir_length 0
    set -l dir_name (prompt_pwd)

    set -l git_symbol "\$"
    set -l branch_name

    if git_is_repo
    	set git_dir (git_dir_name)
    	set branch_name (git_branch_name)
    	set dir_name $dir_name' '
    	
    	if test $git_dir != $PWD
			set dir_name (realpath --relative-to=$git_dir $PWD)
			set dir_name (string replace $HOME '~' $dir_name)' '
		end
		
		if git_is_dirty
			set prompt_color $git_dirty_color
		end

		if git_is_staged
			set prompt_color $git_staged_color
		end
		
		# Don't display the branch name if in master, show otherwise
		if test $branch_name = "master"
			set branch_name

			if git_is_stashed
				set branch_name "{} "
					set branch_name "$prompt_color$branch_name"
			end
		else
			set -l left_par "("
			set -l right_par ")"
			
			if git_is_stashed
				set left_par "{"
				set right_par "}"
			end

			set branch_name $git_color$branch_name
			set left_par $prompt_color$left_par
			set right_par $prompt_color$right_par
			set branch_name "$left_par$branch_name$right_par "
		end

	else
		set git_symbol
    end

    # Colorize prompt
    set dir_name $dir_color$dir_name
    set git_symbol $prompt_color$git_symbol

    # Display the prompt
    echo -sn $dir_name $branch_name $git_symbol
    echo -sn $color_normal ' '
end

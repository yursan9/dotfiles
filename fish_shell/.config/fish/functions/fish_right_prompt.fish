function fish_right_prompt
	set -l stat $status
	set -l duration $CMD_DURATION
	set -l git_dir (git_dir_name)

	if test $stat -ne 0
		echo -n $stat
	end

	if test $duration -gt (math "10 * 1000")
		echo -n ' '(print_readable_time $duration)
	end
	
	if test $git_dir != $PWD
		set git_dir (string replace $HOME '~' $git_dir)
		echo -n ' '$git_dir
	end
end

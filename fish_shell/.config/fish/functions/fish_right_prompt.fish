# Defined in - @ line 2
function fish_right_prompt
	set -l stat $status
	set -l duration $CMD_DURATION

	if test $stat -ne 0
		echo -n $stat
	end

	if test $duration -gt (math "10 * 1000")
		echo -n ' '(print_readable_time $duration)
	end
end

function print_readable_time -a duration
	set -e argv[1]
	set -l minute (math -s0 "$duration / 60000")
	set -l duration (math -s0 "$duration % 60000")
	set -l second (math -s0 "$duration / 1000")

	if test $minute -ne 0
		printf "%dm %ds\n" $minute $second
	else
		printf "%ds\n" $second
	end
end

function git_is_staged
	set -l state (git status --porcelain 2> /dev/null | grep -c "^[MADRC]")
	if test $state -eq 0
		return 1
	end
end

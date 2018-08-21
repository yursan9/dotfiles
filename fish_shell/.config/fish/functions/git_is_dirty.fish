function git_is_dirty
	set -l state (git status --porcelain ^ /dev/null | grep -c "^ [MADRC]")
	if test $state -eq 0
		return 1
	end
end

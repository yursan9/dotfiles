function git_is_stashed
	set -l stashed_changes (git stash list | wc -l)
	if test $stashed_changes -eq 0
		return 1
	end
end

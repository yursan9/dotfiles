function git_is_repo
	if not command git rev-parse --git-dir > /dev/null ^ /dev/null
		return 1
	end
end

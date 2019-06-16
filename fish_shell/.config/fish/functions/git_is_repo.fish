function git_is_repo
	if not command git rev-parse --git-dir > /dev/null 2> /dev/null
		return 1
	end
end

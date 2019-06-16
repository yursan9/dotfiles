function git_branch_name
	set -l branch_name (git rev-parse --abbrev-ref HEAD 2> /dev/null)

	if test "$branch_name" = "HEAD"
		set branch_name (git rev-parse --short HEAD 2> /dev/null)
	end

	printf "%s\n" "$branch_name"
end

function git_branch_name
	set -l branch_name (git rev-parse --abbrev-ref HEAD ^ /dev/null)

	if test "$branch_name" = "HEAD"
		set branch_name (git rev-parse --short HEAD ^ /dev/null)
	end

	printf "%s\n" "$branch_name"
end

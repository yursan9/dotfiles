function git_dir_name
	set dir_name (git rev-parse --absolute-git-dir 2> /dev/null)
	set dir_name (string replace /.git '' $dir_name )

	printf "%s\n" "$dir_name"
end

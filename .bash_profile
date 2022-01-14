for file in ~/dotfiles/.{aliases,functions,extra}; do
	echo "$file ... "
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
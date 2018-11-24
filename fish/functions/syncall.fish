function syncall --argument message
	set folders (cat ~/.config/synched_paths.list)

	echo $folders
	git config --global credential.helper "cache --timeout 7200"
	for i in $folders
		cd $i
		git add .
		git commit -m $message
		git push
	end
end

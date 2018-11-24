function syncall --argument message
	set folders ~\.config
	echo $folders
	git config --global credential.helper "cache --timeout 7200"
	for i in $folders
		git add .
		git commit -m $message
		git push
	end
end

function prependname --argument ext
	set msg "\"author: Reinout Holtrup\""
	echo $msg
	for i in (ls | grep $ext)                  
	if [  (head -n 1 $i) != $msg ]
		sed -i '1s/^/\"author: Reinout Holtrup\"\n/' $i
                end
	end
end

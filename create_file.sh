#!/bin/bash

if [[ "$#" -eq 0 ]]; then
    echo "Enter the file name as first argument "
    echo "Enter 'o' as second argument IF you want to open the file "
    echo -e "You CAN pass text editor name as third argument,to edit the file.\n(Default Nano) "
fi

text_editors=("Vim" "Neovim" "Nano" "gedit" "Kate" "Mousepad")

if [[ -n "$1" ]];then 
	file_name="$1"
	touch $file_name
fi

if [[ $file_name = *.sh ]]; then	
	echo "#!/bin/bash" > $file_name
	chmod +x $file_name
	echo "~~ Bash file created ~~"
elif [[ $file_name = *.py ]]; then
	echo "#!/bin/python3" > $file_name
	chmod +x $file_name
	echo "~~ Python file created ~~"
elif [[ $file_name = *.c ]]; then
	echo "~~ C file created ~~"

fi

if [[ $2 = o ]]; then
	echo "Opening file"
	if [[ -z "$3" ]]; then
		nano "$file_name"
	else
		$3 $file_name
	fi
else
	if [[ -n "$1"  ]]; then 
		read -rp "Do you want to open the file:(y/n) " input
		if [[ $input = y ]];then
			nano "$file_name"
			echo "Opening file"
		fi
	fi			
	
fi



















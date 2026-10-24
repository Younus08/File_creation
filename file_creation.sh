#!/bin/bash

# Simple version

#instructions of the program.
if [[ "$#" -eq 0 ]]; then
    echo "Enter the file name as first argument "
fi

#creating the file.
if [[ -n "$1" ]];then 
        file_name="$1"
        touch $file_name
fi

#editing the file based on the extension.
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

nano "$file_name"
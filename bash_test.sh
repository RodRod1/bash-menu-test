#!/bin/bash

# Show program logo
function showLogo {
clear
echo -e "
	   __   __        __  __
	  / /__/ / ___   / / / / ____
         / __   / / -_) / / / / /__ /
	/_/  /_/ /___/ /_/ /_/ /___/
"
}

while :
do
	showLogo
	
	# Print menu.
	echo -e "1. Show current path."
	echo -e "2. Print \"Hello World!\"."
	echo -e "3. List files in current directory."
	echo -e "\nPress /q, q, or 0 to exit."
	
	# *** Accept user input ***
    read -n1 opt
    a=true;
	
	case $opt in
	    1) 
		    pwd # Display current path
			read -p "Press any key to continue";;
	    2)
		    echo -e "Hello World!" # Print "Hello World!"
			read -p "Press any key to continue";;
		3)
		    ls # List files in current directory.
			read -p "Press any key to continue";;
	    /q | q | 0)
		    echo -e "Goodbye!"
		    break;; # Exit the program
        *) ;;
	esac
    done 
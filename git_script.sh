#!/bin/bash

echo "Which branch do you want to clone: Desktop or Laptop?"

read varPlatChoice

if [ ${varPlatChoice,,} = laptop ]; then
	rm -rf /home/archbook/Laptop_Repo
	mkdir Laptop_Repo
	cd Laptop_Repo
	git clone -b master https://github.com/TJ-Caldwell/dotfiles.git
	cd ~
	echo "Success! The Laptop Dotfiles Have Been Cloned"

elif [ ${varPlatChoice,,} = desktop ]; then
	
	rm -rf /home/archbook/Desktop_Repo
	mkdir Desktop_Repo
	cd Desktop_Repo 
	git clone -b Laptop https://github.com/TJ-Caldwell/dotfiles.git
	cd ~
	echo "Sucess! The Desktop Dotfiles Have Been Cloned"
elif [ ${varPlatChoice,,} = exit ] && [ ${varPlatChoice,,} = quit ] ; then
        echo "Exiting Script"
elif [ ${varPlatChoice,,} != desktop ] && [ ${varPlatChoice,,} != laptop ] && [ ${varPlatChoice,,} != exit ] && [ ${varPlatChoice,,} != quit ] ; then
	echo "Please Enter a Proper Platform Dumbass!"
	sh ~/git_script.sh
fi

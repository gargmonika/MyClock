#Digital Clock 

#!/bin/bash 

##Define color Variables

export Green='\e[1;36m'


## Define Function "clock" 

clock(){
	while true; ##infinite while loop to print time 
	do
		clear
		echo -e ${Green}$(date +%T)   ##"%T" to print only time 
		sleep 1   ##sleep to handle output as per seconds
	done
}
	
##As Here we are displaying output at new terminal window, so we want to invoke function "clock" on new terminal window, thus we are exporting the function.Whenwe defined the function in current window , the scope of the function is only for current window, thats why to use it in another bash shell we will export the function.

export -f clock	
	

## Now create new Terminal window using "gnome-terminal". I am working in "Ubuntu" that has gnome environment here, so i am using this command.If you're using a different desktop environment or terminal emulator, you'll need to replace gnome-terminal with the appropriate command.

##After Creating New terminal window , we need to invoke bash shell to execute commands

## "-c" represents command
## "tput civis" command is to stop the blinking cursor on window.
## Then call the "clock" function

gnome-terminal -- bash -c 'tput civis; clock'


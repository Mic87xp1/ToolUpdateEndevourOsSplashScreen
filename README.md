# Tool Update SplashScreen for EndevourOs
EndevourOS is a Linux distribution command line oriented, based on Arch.
Usually the splash screen in EndevourOS is disabled by default and for activate it it is necessary to install playmouth and to modify the entries adding "quiet splash" as boot arguments.
The problem is, after a kernel update, the updater tool of Endevour will build the new entries without adding quiet splash as boot arguments

The aim of this tool is to add the option quiet splash to the cmdline for the updater tool of Endevour OS, so it'll always create the new entries adding also the quiet splash bootargs

### Requirements

- Playmouth;
- SystemD;

#### Important!
**This script work only with SystemD bootloader, it does not work with GRUB**

### How to use it

It is necessary to execute the tools as SuperUser.

    git clone https://github.com/Mic87xp1/ToolUpdateEndevourOsSplashScreen.git
    cd ToolUpdateEndevourOsSplashScreen/tools
    chmod +x appendSplashOptions.sh
	sudo ./appendSplashOptions.sh
    


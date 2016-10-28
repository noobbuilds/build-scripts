NOOBBUILDS Build Scripts

NOTE: Prior to using the build script check the file properties to assure it 
is executable and change if not.

The "make -jx" is set to `getconf _NPROCESSORS_ONLN`. This will use the total 
number of available processor threads. To change this setting open the build script 
file with a text editor and set to your choice. 


Use N6P_BUILD.sh ---->   To build angler nexus 6P

Use N9_BUILD.sh ---->   To build flounder nexus 9



Current scripts will use ninja for build. To disable ninja use 

            export USE_NINJA=false 

   in your path.         
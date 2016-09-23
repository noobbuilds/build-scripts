NOOBBUILDS Build Scripts

NOTE: Prior to using the build script check the file properties to assure it 
is executable and change if not.

The "make -jx" is set to `getconf _NPROCESSORS_ONLN`. This will use the total 
number of available processor threads. To change this setting open the build script 
file with a text editor and set to your choice. 

Use N6_BUILD.sh ---->   To build sshamu nexus 6

Use N6P_BUILD.sh ---->   To build angler nexus 6P

Use N9_BUILD.sh ---->   To build flounder nexus 9

NOTE: The build scripts diable ninja if you want to use ninja
      remove the line      export USE_NINJA=false   or change
      the false to true.


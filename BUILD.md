 
 \Author: Steven Truppe
 \Copyright: Copyright (c) 2019 by Steven Truppe

 === Build ===
 To see all build flags you have to enter `cmake -LH` in the main directory.

 == Build Unix ==
 To see all build flags use `cmake -LH`. Run this BEFORE you start to build so
 you know what flags to pass to cmake to build the project. That includes if 
 the documentation is build or not etc.

 = External dependencies =
 Before you can compile and link the project you need the following packages
 installed on you system (i try to make the dependencies list as short as 
 possible, most everything the project needs is downloaded and also build).

 Debian
 ------
 External dependencies: 
  
  DEBIAN
  ======
   - libgl1-mesa-dev, texinfo, xorg-dev, autopoint, doxygen, graphviz, sphianx-man, gettext, gnulib, libglew-dev
   - cmake version 3.14 or later



 To build the project type the following:
 ----------------------------------------
 mkdir build
 cd build
 cmake -DCMAKE_BUILD_TYPE:String=Release ../
 make -j[number of cpu cores][--VERBOSE=1]
 make install

 To be able to create the documentation you need *Doxygen*. It can normaly be 
 installed with the package doxygen, for doxygen to be able to create diagrams
 you also need the dot tools. This is the package *graphviz*.

 == Build Windows ==
 To be continued...


 == Build MacOSX ==
 To be continued...




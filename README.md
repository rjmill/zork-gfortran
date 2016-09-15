DUNGEON (Zork I)
==============

This is Robert Supnik's Dungeon V3.2B for various DEC Fortrans, ported to MS-DOS
by Volker Blasius, and then ported to work with g77 by David Kinder.

I've made changes to the code so that it will compile using gfortran on Linux. If
you already have gfortran installed, compiling it should work with
```
# at the root level of this project
gfortran -fd-lines-as-comments src/*.f -o dungeon
```

If that doesn't work, feel free to open an issue describing your problem. I'm
specifically targeting Arch Linux and Ubuntu 14.04 for this, but I'd like it
to work on all platforms if possible and will help as much as I can.

My next steps are getting a proper Makefile and refactoring the code to the
point where I can use it as a library in other Fortran projects. If I'm feeling
particularly crazy, I might do a full port to Fortran 90 or 95, but I doubt I'll
do that unless I bump into some pressing practical reasons to do so.

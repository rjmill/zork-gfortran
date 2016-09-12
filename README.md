DUNGEON (Zork I)
==============

This is Robert Supnik's Dungeon V3.2B for various DEC Fortrans, ported to MS-DOS
by Volker Blasius, and then ported to work with g77 by David Kinder.

I'm porting this to gfortran so I can run it on Linux. Gfortran doesn't seem to
fully support g77. g77 has been somewhat officially deprecated, at least as far
as most linux package managers are concerned. Getting g77 working on linux
seems like a pain, so obviously the only sensible course of action is to go
through and make the source code work for gfortran.

I actually do have a good reason for porting this to gfortran, but that's a
story for another day.

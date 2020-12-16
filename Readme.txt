1) Use galkin to generate the position data and rotation curve data and save them to posdata.dat and vcdata.dat file

install galkin from https://github.com/galkintool/galkin

in the \bin file folder under galkin, run: python2 galkin_data.py inputpars.txt

2) Use galpy to calculate the model MWPotential2014 of the Milky Way

install galpy from https://github.com/jobovy/galpy

use the plotRotcurve.py file in this folder to replace the same file in the galpy/potential folder
(I slightly changed this file, so we can save the calculated result to a file)

To calculate the contribution of each component in the MWpotential2014, run: python3 MW2014RC.py

3)plot figure 1 and figure 2 in my paper (https://www.overleaf.com/read/drptzspfypnw)
In matlab, run the script plotMW2014RC.m

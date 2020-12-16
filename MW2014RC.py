from galpy.potential import MWPotential2014
[psp,mp,np]=MWPotential2014
from galpy.potential import plotRotcurve
plotRotcurve(psp+mp+np,Rrange=[0.01,4.],grid=1001,yrange=[0.,1.2],savefilenameRC='MWP2014RC.txt')
mp.plotRotcurve(Rrange=[0.01,4.],grid=1001,overplot=True,savefilenameRC='Miya2014RC.txt')
psp.plotRotcurve(Rrange=[0.01,4.],grid=1001,overplot=True,savefilenameRC='PSP2014RC.txt')
np.plotRotcurve(Rrange=[0.01,4.],grid=1001,overplot=True,savefilenameRC='NFW2014RC.txt')
plotRotcurve(psp+mp,Rrange=[0.01,4.],grid=1001,yrange=[0.,1.2],overplot=True,savefilenameRC='MWP2014bdRC.txt')
import matplotlib.pyplot
matplotlib.pyplot.show()

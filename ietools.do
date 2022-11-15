clear all

import fred UNRATE PAYEMS

gen date=mofd(daten)
tsset date, monthly


python
import sys
sys.path.append('C:\\Users\\ernie\\Documents\\GitHub\\IEtools')
import numpy as np
import IEtools 
import pylab as pl
from sfi import Data
# %pylab inline

result = IEtools.fitGeneralInfoEq(Data.get('UNRATE'), Data.get('PAYEMS'), guess=[1.0,0.0])
print(result)
# print('IT index = ',np.round(result.x[0],decimals=2))
		
# Data.addVarDouble('benefits')

# Data.store('benefits', None, benefits)

end

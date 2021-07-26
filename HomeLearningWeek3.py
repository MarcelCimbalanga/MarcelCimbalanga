#1
my_list =[0,1,2,3,4,5,6,7,8,9]
print(my_list)

#2
import numpy as np
array = np.ones((3,3), dtype = bool)
print(array)

#3
import numpy as np
array = np.arange(1,10,2)
print(array)

#4
import numpy as np 
array = np.array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10]) 
array[array%2 == 1] = -1 
print(array)

#5
import numpy as np
array = np.array([1,2,3,4,5,6,7,8,9,10])
newArray = array.reshape(2,5)
print(newArray)

#6
import numpy as np
a = np.arange (6,15).reshape (3,3) 
b = np.arange (16,25).reshape (3,3) 
c = np.dot(a, b)
print(c)
d = np.dot(a, b)
sum = np.sum(d) 
print(sum)

#Extension1
import numpy as np
n = 1
array = np.array([n,n,n,n+1,n+1,n+1,n+2,n+2,n+2,n,n+1,n+2,n,n+1,n+2,n,n+1,n+2])
np.tile(array, n)
print(array)

#Extension2
import numpy as np
a = np.array([1,2,3,4,5])
b = np.array([4,5,6,7,8,9])
c = np.setdiff1d(b,a)
print(c)

#Extension3
import numpy as np
a = np.array([1,2,3,4,5])
b = np.array([4,5,6,7,8,9])
a_2 = a[2:5]
b_2 = b[0:3]
c = np.dot(a_2,b_2)
sum = np.sum(c)
print(c)


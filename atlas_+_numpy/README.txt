######### Installing Numpy + Atlas ##########

You must install the script install_atlas.sh
1) Check the newest available versions from ATLAS e LAPACK and change the lines 5 and 8.
2) At the lines 29 and 32, set the number of cpus that the target machine has: e.g: if n_cpus = 4,
for {0..3}
3) After installation, delete the folder from line 3: ~/installed-packages

4) Now, check if the atlas was installed correctly in the directory: /usr/local/atlas/
5) Set the following variables in your .bashrc and also export manually on terminal
export ATLAS=/usr/local/atlas/lib/libtatlas.so
export BLAS=/usr/local/atlas/lib/libptf77blas.a
export LAPACK=/usr/local/atlas/lib/liblapack.a

6) Now, you must install the python packages.
# remove the old installations
sudo apt-get remove python-dev python-pip
pip uninstall numpy
pip uninstall scipy

sudo apt-get install python-dev python-pip
pip install numpy
pip install scipy

7) Finally, open the python terminal and try:
import numpy as np
l = np.random.randn(10000, 10000)
np.dot(l,l)

all cores must be in 100%.

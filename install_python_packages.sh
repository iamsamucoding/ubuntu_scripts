source ~/yeah/bin/activate

printf "\n---> Installing Ipython\n"
pip install ipython

printf "\n---> Installing Numpy\n"
pip install numpy

printf "\n---> Installing Scipy\n"
pip install scipy

printf "\n---> Installing Matplotlib\n"
pip install matplotlib

printf "\n---> Installing Scikit-learn\n"
pip install -U scikit-learn

printf "\n---> iJupyter\n"
pip install jupyter

printf "\n---> Scikit-Image\n"
pip install scikit-image

printf "\n---> Nibabel\n"
pip install nibabel

printf "\n---> SimpleITK\n"
pip install SimpleITK

printf "\n---> Installing Cython\n"
sudo apt-get -y install cython

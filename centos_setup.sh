# install necessary packages
## replace yum with dnf when using fedora
yum update
yum install nano

# set up git
yum install git
git config --global user.name YOUR_USERNAME
git config --global user.email YOUR_EMAIL

# install anaconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
## follow the instruction and allow the conda init
exec bash # restart the terminal to load the newly installed conda
## create a new environment
conda create -n NAME python=3.10 ipykernel
conda activate name
## install jupyterlab and jupyter kernel
conda install -c conda-forge jupyterlab
python -m ipykernel install --user --name name --display-name "name you want to show in jupyter"
## install packages
pip install -r requirements.txt -q
cond install -c conda-forge -file requirements.txt
## quit and delete environment
conda deactivate
conda remove --prefix=~/name --all # delete virtual env

# install docker
yum install docker
systemctl start docker
systemctl enable docker

# install

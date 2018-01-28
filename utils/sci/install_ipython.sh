sudo pip install jupyter
sudo pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
pip install jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user
cat ipyex.txt | xargs -iff jupyter nbextension enable ff

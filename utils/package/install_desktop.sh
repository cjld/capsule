./install_prettyGUI.sh

cat ./desktop.md | xargs -n 1 sudo apt-get install -y
cat ./admin.md | xargs -n 1 sudo apt-get install -y
cat ./prog.md | xargs -n 1 sudo apt-get install -y

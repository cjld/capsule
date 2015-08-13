# sh -x -c "$(curl -fsSL https://raw.githubusercontent.com/cjld/capsule/master/utils/deploy.sh)"
set -e
cd ~
git clone --no-checkout https://github.com/cjld/capsule.git

cd capsule
git config core.worktree ../../
git reset --hard HEAD

~/utils/package/install_all.sh
sudo chsh $USER -s $(which zsh)

set -x

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
# ubuntu 12.04
#echo "deb http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
# ubuntu 15.10
echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
# ref <http://askubuntu.com/questions/690993/mongodb-3-0-2-wont-start-after-upgrading-to-ubuntu-15-10>
sudo apt-get update
sudo apt-get install -y mongodb-org

# start mongoDB
#sudo service mongod start

# Verify that MongoDB has started successfully
# cat /var/log/mongodb/mongod.log

# config in /etc/mongod.conf

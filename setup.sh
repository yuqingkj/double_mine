apt update
apt install git -y
git clone https://github.com/yuqingkj/double_mine.git
sudo apt-get install nvidia-cuda-toolkit -y
cd double_mine
chmod 777 ./xmrig ./bminer ./mine_grin29.sh
cd
screen -dmS grin
cmd1=$"cd double_mine && ./xmrig";
screen -x -S xmr -p 0 -X stuff "$cmd1"
screen -x -S xmr -p 0 -X stuff $'\n'
screen -dmS grin
cmd2=$"cd double_mine && ./mine_grin29.sh";
screen -x -S grin -p 0 -X stuff $'cmd2'
screen -x -S grin -p 0 -X stuff $'\n'

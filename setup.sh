apt update
apt install git -y
git clone https://github.com/yuqingkj/double_mine.git
sudo apt-get install nvidia-cuda-toolkit -y
cd double_mine
chmod 777 ./xmrig ./bminer ./mine_grin29.sh
screen -dmS xmr
screen -x -S xmr -p 0 -X stuff "./xmrig";
screen -x -S xmr -p 0 -X stuff $'\n'
screen -dmS grin
screen -x -S grin -p 0 -X stuff "./mine_grin29.sh";
screen -x -S grin -p 0 -X stuff $'\n'
screen -ls

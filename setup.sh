apt update
apt install git -y
git clone https://gitee.com/yuqingkj/double_miner.git
sudo apt-get install nvidia-cuda-toolkit -y
cd mine_xmr
chmod 777 ./xmrig
screen -dmS xmr
cmd=$"./xmrig";
screen -x -S xmr -p 0 -X stuff "$cmd"
screen -x -S xmr -p 0 -X stuff $'\n'

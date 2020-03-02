yum install git -y
git clone https://gitee.com/yuqingkj/mine_xmr.git
yum install screen -y
cd mine_xmr
chmod 777 ./xmrig
screen -dmS xmr
cmd=$"./xmrig";
screen -x -S xmr -p 0 -X stuff "$cmd"
screen -x -S xmr -p 0 -X stuff $'\n'

sudo apt-get update

# node, npm 설치
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install build-essential

# pm2 설치
sudo npm i pm2 -g

# git
sudo apt-get install git
sudo git config --global moaikang # GitHub 닉네임으로 변경 하세요!
sudo git config --global kk_w1207@naver.com # GitHub 이메일로 변경하세요!

sudo su -

# nginx
sudo apt-get install nginx
sudo service nginx start

cd ..
cd ..
cd etc/nginx/sites-available/

# server_name 뒤의 IP를 사용 하고자 하는 서버의 공인 IP로 바꾸세요.
# proxy_pass 뒤의 포트를 사용하고자 하는 프론트 포트로 바꾸어주세요.
sudo cat <<EOT >> node-server
server {
    listen 80;
    server_name 101.101.210.118;
    location / {
        proxy_pass http://127.0.0.1:3000;
    }
}
EOT

cd ..
cd ..
sudo vi hosts
# vi가 열린 다음에 NCP 서버 이름으로 두번째 줄 127.0.0.1 수정 

sudo ln -sf /etc/nginx/sites-available/node-server /etc/nginx/sites-enabled/
sudo service nginx restart


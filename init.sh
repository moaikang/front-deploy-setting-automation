echo Ubuntu 계정 이름을 입력하세요 :
read UBUNTU_ID

echo Public IP를 입력하세요 :
read PUBLIC_IP

scp setting1.sh $UBUNTU_ID@$PUBLIC_IP:/home/$UBUNTU_ID/
scp setting2.sh $UBUNTU_ID@$PUBLIC_IP:/home/$UBUNTU_ID/
ssh $UBUNTU_ID@$PUBLIC_IP
# 프론트 환경 설정 반자동 스크립트 ⚙️

BoostCamp 학습 스프린트 과정에서 사용할 프론트 배포 환경 설정 반자동 스크립트 입니다.  
사용된 설정은 아래와 같습니다.

```
node
npm
GIT
nginx
pm2
```

## Usage

NCP에 ubuntu 서버를 하나 만들고,  
superuser 권한이 있는 유저를 하나 만듭니다.

```bash
bash init.sh
```

명령어를 실행합니다.
그러면 ubuntu 접속이 됩니다.  
이 상태에서 아래와 같은 명령어를 실행합니다.

```
bash setting1.sh
```

명령을 실행한 뒤, 절차에 맞게 정보들을 입력합니다.  
중간에 vi 창이 뜨는데, 두번째 줄
`127.0.1.1` 뒤의 이름을 NCP 인스턴스 이름으로 수정한 뒤에 저장합니다.  
그 뒤, 아래와 같은 명령어를 실행합니다.

```
bash setting2.sh
```

이제 ubuntu에

```
node
npm
GIT
nginx
pm2
```

위의 내용들이 적용되었습니다.

`git clone` 하시고 프로젝트 폴더에 들어가

```
npm i
npm start
```

로 서버 여시면 Public IP로 프론트 결과물 확인 가능합니다.

## Contributing

언제든지 Pull Request 환영합니다! 😊

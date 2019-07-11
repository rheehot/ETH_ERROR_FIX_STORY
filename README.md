# 이더리움 환경설정을 하는 도중 발생하는 문제에 대해서 작성하기 위해 만든 REPO 입니다.

## mist 설치 
- 여기에서 체크섬 에러 발생
1. 시도 1
    1. Ethereum-Wallet-installer-0-11-1.exe 설치
    2. C:\Users\<USERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Ethereum Wallet 위치에 파일이 설치된다.
    3. Ethereum Wallet.exe 프로그램을 실행한다.
    4. CHECK_SUM 에러가 발생한다.
    5. 에러의 내용은 다음과 같다.
    - MD5 : e05524cc4f6e8711645f40ef5921918a
    - Please intall the Geth node version 1.8.23 manually.
    6. 결론 : Geth 1.8.23 을 안깔아서 발생하는 에러
2. 시도 2
    1. 이전 자료를 C:\Users\<USERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Ethereum Wallet에서 unistall.exe를 이용해 삭제한다. 
    2. Ethereum-Wallet-installer-0-11-1.exe 재설치한다.
    3. C:\Users\<USERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Ethereum Wallet 위치에 파일이 설치된다.
    4. Geth를 설치한다. https://geth.ethereum.org/downloads/ , 아래로 쭉 내려 Release 버전을 1.8.23으로 설치하자
    5. 설치 시 Development tools 선택옵션을 포함해서 설치했다.
    6. geth 설치 이후 cmd 창을 띄워 geth console 명령어 우선 실행해본다.
    7. 지갑을 실행해 본다.
    8. 에러가 없이 정상적으로 작동한다. (19.07.11 에러 해결)

CHECK_SUM 에러 내용
- Geth 1.8.21 - md5 : e05524cc4f6e8711645f40ef5921918a
## 결론 : Geth 버전이 1.8.21로 잡혀있으니 1.8.23으로 설치하라는 뜻
## 해결방법 : 1.8.23 버전으로 Geth 설치하면 해결됨
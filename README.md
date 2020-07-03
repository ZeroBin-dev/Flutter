1. Flutter SDK
 - https://flutter.dev/docs/get-started/install 접속
 - 운영체제에 맞는 zip 파일 다운로드
 - 권한 필요하지 않는 폴더로 이동(권한이 필요한 C:/ProgramFile 같은곳은 제외) -> 난 C:\src\ 에 넣었음
 - 설치후 /bin 까지 Path 설정
 - CMD 창에 flutter doctor 명령어로 상태확인
 
2. VSCode
 - https://code.visualstudio.com/ 접속
 - 설치 후 실행 -> Flutter 플러그인 설치
 - Rainbow Brackets 플러그인 설치
 - View -> Command Palette -> New Project -> Flutter: New Project 선택
 - 애뮬러이터 필요
 
3. Android SDK
 - https://developer.android.com/studio?hl=ko 접속
 - 밑으로 내리다 보면 Command line tools only 운영체제에 맞게 설치후
 - zip 파일 해제후 적당한 위치로 옮기고 tools 상위 까지 Path 등록 
 - Path 등록시 꼭 시스템 변수를 쓸것 (ANDROID_HONE : C:\src\android-sdk)
 - bin 까지 들어가서 명령어 실행 -> .\sdkmanager "platforms;android-28" "build-tools;28.0.3" "platform-tools" "extras;google;usb_driver"
 - Accept y 누르고 진행
 - 명령어로 라이선스 등록 -> flutter doctor --android-licenses
 
참고 : ./sdkmanager 에러시 sdkmanager.bat 수정 -> @rem Execute sdkmanager 주석 맨 끝에 --sdk_root=%ANDROID_HOME% 추가

4. 안드로이드 애뮬레이터 추가
 - .\sdkmanager "system-images;android-27;google_apis_playstore;x86"
 - 애뮬레이터 생성 : flutter emulators --create flutter_emulator
 - 애뮬레이터 실행 : flutter emulators --launch flutter_emulator
 
참고 : flutter emulator 명령어로 애뮬레이터 확인 가능


환경변수
ANDROID_HOME : C:\src\android-sdk
ANDROID_SDK_HOME : C:\src\android-sdk\platform-tools
ANDROID_SDK_ROOT : C:\src\android-sdk


## strip 관련 오류는 bazel 버전이 높아서이다. 1.2 이나 2.2.0 으로 낮춰야한다
// https://github.com/google/agi/issues/254 

cc_toolchain.strip_executable() 'string' object is not callable

## bazel 2.2.0 을 사용할 경우 python, msys 는 수동으로 설치 필요

the doc inherited from the time we used Bazel 1.0.0 says that installing Bazel via chocolatey would also install Python and Msys, because Bazel 1.0.0 was depending on them:
https://chocolatey.org/packages/bazel/1.0.0#dependencies

since we updated to Bazel 2.0.0, I think the Bazel package depends on neither Python nor MSYS2:
https://chocolatey.org/packages/bazel/2.0.0#dependencies

## 아래 환경 변수 추가로 설정해 줌

```
# vulkan 인데 이건 긴가 민가
C:\VulkanSDK\1.2.170.0\Bin
# patch 실행파일을 찾을 수 없다고 나옴
C:\tools\msys64\usr\bin
````

## tools/msys64와 python27이 1.2.0 bazel을 설치하더라도 없다
choco install msys2
choco install python2
#python2 는 설치되어있다면, reinstall 해도 해당 폴더에 기록안됨
# path에 등록하자

## 7.3 gcc 가 없다

```
# https://repo.msys2.org/mingw/x86_64/

pacman -Syu

### segment fault 로 실패함
wget https://repo.msys2.org/mingw/x86_64/mingw-w64-x86_64-gcc-libs-7.2.0-1-any.pkg.tar.xz
wget https://repo.msys2.org/mingw/x86_64/mingw-w64-x86_64-gcc-7.2.0-1-any.pkg.tar.xz
pacman -U mingw-w64-x86_64-gcc-*
wget https://repo.msys2.org/mingw/x86_64/mingw-w64-x86_64-gdb-9.2-4-any.pkg.tar.zst
pacman -U mingw-w64-x86_64-gdb-9.2-4-any.pkg.tar.zst

### 귀찮다 최신버전으로 땡기자. 더이상 고통받기 싫다

```

pacman 으로 이미 설치된 gcc 를 날리긴 힘들다;
최신버전을 깔았을 경우 포기하고 빌드시 오류를 잡자
(웹으로 가져오는 라이브러리 path를 내가 만든 수정본으로 바꿔야할듯)

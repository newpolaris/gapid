
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

## 7.3 gcc 가 없다

```
# https://repo.msys2.org/mingw/x86_64/

https://repo.msys2.org/mingw/x86_64/mingw-w64-x86_64-gcc-libs-7.2.0-1-any.pkg.tar.xz
https://repo.msys2.org/mingw/x86_64/mingw-w64-x86_64-gcc-7.2.0-1-any.pkg.tar.xz
```

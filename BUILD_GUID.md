
## strip 관련 오류는 bazel 버전이 높아서이다. 1.2 이나 2.2.0 으로 낮춰야한다
// https://github.com/google/agi/issues/254 

cc_toolchain.strip_executable() 'string' object is not callable

## bazel 2.2.0 을 사용할 경우 python, msys 는 수동으로 설치 필요

the doc inherited from the time we used Bazel 1.0.0 says that installing Bazel via chocolatey would also install Python and Msys, because Bazel 1.0.0 was depending on them:
https://chocolatey.org/packages/bazel/1.0.0#dependencies

since we updated to Bazel 2.0.0, I think the Bazel package depends on neither Python nor MSYS2:
https://chocolatey.org/packages/bazel/2.0.0#dependencies



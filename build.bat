set TMP=c:\tmp
set BAZEL_SH=C:\tools\msys64\usr\bin\bash.exe
set ANDROID_HOME=C:\Users\newpolaris\AppData\Local\Android\Sdk
set ANDROID_NDK_HOME=C:\Users\newpolaris\AppData\Local\Android\Sdk\ndk\20.1.5948944
set JAVA_HOME=C:\Program Files\AdoptOpenJDK\jdk-11.0.11.9-hotspot\
PATH=C:\tools\msys64\mingw64\bin;%PATH%
PATH=C:\tools\msys64\usr\bin;%PATH%
; PATH=C:\VulkanSDK\1.2.170.0\Bin;%PATH%
PATH=C:\Python27;%PATH%
bazel build pkg

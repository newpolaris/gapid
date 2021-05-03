
## strip ���� ������ bazel ������ ���Ƽ��̴�. 1.2 �̳� 2.2.0 ���� ������Ѵ�
// https://github.com/google/agi/issues/254 

cc_toolchain.strip_executable() 'string' object is not callable

## bazel 2.2.0 �� ����� ��� python, msys �� �������� ��ġ �ʿ�

the doc inherited from the time we used Bazel 1.0.0 says that installing Bazel via chocolatey would also install Python and Msys, because Bazel 1.0.0 was depending on them:
https://chocolatey.org/packages/bazel/1.0.0#dependencies

since we updated to Bazel 2.0.0, I think the Bazel package depends on neither Python nor MSYS2:
https://chocolatey.org/packages/bazel/2.0.0#dependencies

## �Ʒ� ȯ�� ���� �߰��� ������ ��

```
# vulkan �ε� �̰� �䰡 �ΰ�
C:\VulkanSDK\1.2.170.0\Bin
# patch ���������� ã�� �� ���ٰ� ����
C:\tools\msys64\usr\bin
````

## tools/msys64�� python27�� 1.2.0 bazel�� ��ġ�ϴ��� ����
choco install msys2
choco install python2
#python2 �� ��ġ�Ǿ��ִٸ�, reinstall �ص� �ش� ������ ��Ͼȵ�
# path�� �������

## 7.3 gcc �� ����

```
# https://repo.msys2.org/mingw/x86_64/

pacman -Syu

### segment fault �� ������
wget https://repo.msys2.org/mingw/x86_64/mingw-w64-x86_64-gcc-libs-7.2.0-1-any.pkg.tar.xz
wget https://repo.msys2.org/mingw/x86_64/mingw-w64-x86_64-gcc-7.2.0-1-any.pkg.tar.xz
pacman -U mingw-w64-x86_64-gcc-*
wget https://repo.msys2.org/mingw/x86_64/mingw-w64-x86_64-gdb-9.2-4-any.pkg.tar.zst
pacman -U mingw-w64-x86_64-gdb-9.2-4-any.pkg.tar.zst

### ������ �ֽŹ������� ������. ���̻� ����ޱ� �ȴ�

```

pacman ���� �̹� ��ġ�� gcc �� ������ �����;
�ֽŹ����� ����� ��� �����ϰ� ����� ������ ����
(������ �������� ���̺귯�� path�� ���� ���� ���������� �ٲ���ҵ�)

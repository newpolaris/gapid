
## strip ���� ������ bazel ������ ���Ƽ��̴�. 1.2 �̳� 2.2.0 ���� ������Ѵ�
// https://github.com/google/agi/issues/254 

cc_toolchain.strip_executable() 'string' object is not callable

## bazel 2.2.0 �� ����� ��� python, msys �� �������� ��ġ �ʿ�

the doc inherited from the time we used Bazel 1.0.0 says that installing Bazel via chocolatey would also install Python and Msys, because Bazel 1.0.0 was depending on them:
https://chocolatey.org/packages/bazel/1.0.0#dependencies

since we updated to Bazel 2.0.0, I think the Bazel package depends on neither Python nor MSYS2:
https://chocolatey.org/packages/bazel/2.0.0#dependencies



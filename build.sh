export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home
export ANDROID_HOME=/Users/peter.kim/Library/Android/sdk
export ANDROID_NDK_HOME=/Users/peter.kim/Library/Android/sdk/ndk/20.1.5948944

bazel build -c dbg pkg
# bazel build pkg

cd LuaJIT-2.1/src

# Android/ARM, armeabi-v8a (ARMv7 VFP), Android 4.0+ (ICS)
NDK=/Users/sant/Documents/android/android-ndk-r20b

make clean
NDKBIN=$NDK/toolchains/llvm/prebuilt/darwin-x86_64/bin/
API=21

# arm64-v8a
NDKTRIPLE=aarch64-linux-android
rm -f *.o
make clean
make CC=clang CROSS=$NDKBIN/$NDKTRIPLE$API- TARGET_SYS=Linux TARGET_AR="$NDKBIN/$NDKTRIPLE-ar rcus" TARGET_STRIP=$NDKBIN/$NDKTRIPLE-strip
cp ./libluajit.a ../../android/arm64-v8a/libluajit.a
make clean

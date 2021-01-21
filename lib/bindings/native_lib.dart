import 'dart:ffi';
import 'dart:io';

final DynamicLibrary nativeLib = Platform.isAndroid
    ? DynamicLibrary.open("libmaverick.so")
    : DynamicLibrary.process();

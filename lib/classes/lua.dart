import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../bindings/native_lib.dart';
import '../bindings/types.dart';

typedef print_usage_func = Void Function();
typedef PrintUsage = void Function();
final print_usage = nativeLib
    .lookup<NativeFunction<print_usage_func>>("print_usage")
    .asFunction<PrintUsage>();

typedef print_version_func = Void Function();
typedef PrintVersion = void Function();
final print_version = nativeLib
    .lookup<NativeFunction<print_version_func>>("print_version")
    .asFunction<PrintVersion>();

typedef lua_open_func = Pointer<lua_State> Function();
typedef LuaOpen = Pointer<lua_State> Function();
final lua_open = nativeLib
    .lookup<NativeFunction<lua_open_func>>("luaL_newstate")
    .asFunction<LuaOpen>();

typedef l_message_func = Void Function(Pointer<Utf8>, Pointer<Utf8>);
typedef LMessage = void Function(Pointer<Utf8>, Pointer<Utf8>);
final l_message = nativeLib
    .lookup<NativeFunction<l_message_func>>("l_message")
    .asFunction<LMessage>();

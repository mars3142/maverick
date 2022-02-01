import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:maverick/bindings/lua.ext.dart';
import 'package:maverick/bindings/lua.g.dart';
import 'package:maverick/bindings/native_lib.dart';

class Lua {
  Lua5 lua5;
  Pointer<lua_State> L = nullptr;

  Lua() : lua5 = Lua5(nativeLib) {
    L = lua5.luaL_newstate();
  }

  void dispose() {
    lua5.lua_close(L);
    L = nullptr;
  }

  List<String> eval({id: int, code: String}) {
    Pointer<Int8> restr = nullptr;
    if (L != nullptr) {
      final string = "$code".toNativeUtf8().cast<Int8>();
      final base = lua5.lua_gettop(L);
      final res = lua5.luaL_dostring(L, string);
      var top = lua5.lua_gettop(L);

      print("base: $base, res: $res, top: $top");

      if (res > 0) {
        restr = lua5.lua_tostring(L, -1);
        lua5.lua_pop(L, 1);
        top = lua5.lua_gettop(L);
      } else {
        restr = "OK".toNativeUtf8().cast<Int8>();
      }

      if (top > 0) {
        for (int i = 0; i < top; i++) {
          final str = lua5.lua_tostring(L, i - top);
          print(str);
        }
      }

      if (top > base) {
        lua5.lua_pop(L, top - base);
      }

      malloc.free(string);
      if (restr != nullptr) return [restr.cast<Utf8>().toDartString()];
    }
    return [];
  }
}

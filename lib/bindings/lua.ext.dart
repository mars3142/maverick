import 'dart:ffi';

import 'lua.g.dart';

extension Methods on Lua5 {
  // ignore: non_constant_identifier_names
  int luaL_dostring(Pointer<lua_State> L, Pointer<Int8> s) {
    var result = luaL_loadstring(L, s);
    if (result != 0) result = lua_pcall(L, 0, LUA_MULTRET, 0);
    return result;
  }

  // ignore: non_constant_identifier_names
  Pointer<Int8> lua_tostring(Pointer<lua_State> L, int i) {
    return lua_tolstring(L, (i), nullptr);
  }

  // ignore: non_constant_identifier_names
  void lua_pop(Pointer<lua_State> L, int n) {
    lua_settop(L, -(n) - 1);
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:maverick/maverick.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const value = -1;

  static int demo(Pointer<lua_State> state) {
    // double arg = lua_tonumber(state, -1);
    // print("demo($arg)");
    return 1;
  }

  @override
  void initState() {
    super.initState();

    final Lua lua = Lua();
    final result = lua.eval(id: 0, code: "return LUA_VERSION");
    print(result);
    lua.dispose();
    // final lua5 = Lua5(nativeLib);
    // final state = lua5.luaL_newstate();
    // final foobar = "foobar".toNativeUtf8();
    //  (state, Pointer.fromFunction<lua_CFunction>(demo, 0), foobar);
    // final result = lua5.luaL_dostring(state, 'foobar(1.0);'.toNativeUtf8());
    // print("Result: $result");
    // lua5.lua_close(state);
    // malloc.free(foobar);
  }

  static int test(Pointer<lua_State> state) {
    print("Callbacks are working");
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text("It's running"),
        ),
      ),
    );
  }
}

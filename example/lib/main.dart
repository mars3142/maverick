import 'package:ffi/ffi.dart';
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
  @override
  void initState() {
    super.initState();

    final value = lua_open();
    print_version();
    l_message(Utf8.toUtf8("Key"), Utf8.toUtf8("Value"));
    print(value);
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

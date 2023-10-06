import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sellfishing/app/shared/theme.wrappedowls.dart';
import 'package:sellfishing/core/util/global.functions.dart';
import 'package:sellfishing/hompage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    super.initState();
    GlobalFunctions.setGlobalState = setState;
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    UuuUhuThemes.setTheme(brightness);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: UuuUhuThemes.getLight(),
      darkTheme: UuuUhuThemes.getDark(),
      themeMode: UuuUhuThemes.themeMode,
      home: const HomePage(),
    );
  }
}

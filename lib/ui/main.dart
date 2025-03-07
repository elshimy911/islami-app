import 'package:flutter/material.dart';
import 'package:islami_app/ui/ChapterDetails/ChapterdetailsScreen.dart';
import 'package:islami_app/ui/HadethDetails/HadethDetailsScreen.dart';
import 'package:islami_app/ui/MyThemeData.dart';
import 'package:islami_app/ui/home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routeName : (BuildContext)=>HomeScreen(),
        ChpaterDetailsScreen.routeName: (BuildContext)=>  ChpaterDetailsScreen(),
        HadethDetailsScreen.routeName: (BuildContext)=> HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

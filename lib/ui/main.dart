import 'package:flutter/material.dart';
import 'package:islami_app/ui/ChapterDetails/ChapterdetailsScreen.dart';
import 'package:islami_app/ui/HadethDetails/HadethDetailsScreen.dart';
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
      theme: ThemeData(
        cardTheme: CardTheme(
        color: Colors.white,
          elevation: 18,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )
        ),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 32,
            ),

        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 32,
          ),
         // unselectedIconTheme: ,
         // selectedLabelStyle: ,
        //  unselectedLabelStyle: ,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB7935F,),
        primary: Color(0xFFB7935F,) ,
          secondary: Color(0x87B7935F,),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routeName : (BuildContext)=>HomeScreen(),
        ChpaterDetailsScreen.routeName: (BuildContext)=>  ChpaterDetailsScreen(),
        HadethDetailsScreen.routeName: (BuildContext)=> HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth/hadethTap.dart';
import 'package:islami_app/ui/home/quran/quranTap.dart';
import 'package:islami_app/ui/home/radio/radioTap.dart';
import 'package:islami_app/ui/home/sebha/sebhaTap.dart';

class HomeScreen extends StatefulWidget {
 static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int selectedTapIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              selectedTapIndex = index;
            });
          },
          currentIndex: selectedTapIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),label: 'quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),label: 'Sebha'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),label: 'Radio'),
          ],
        ),
        body: tabs[selectedTapIndex],
      ),
    );
  }
  List<Widget>tabs = [
    QuranTap(),
    HadethTab(),
    SebhaTap(),
    RadioTap(),
  ];
}

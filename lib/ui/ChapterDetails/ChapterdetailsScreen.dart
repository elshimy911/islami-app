import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/ChapterDetails/verseWidget.dart';

class ChpaterDetailsScreen extends StatefulWidget {
  static const String routeName = 'Chapter-Details';

  @override
  State<ChpaterDetailsScreen> createState() => _ChpaterDetailsScreenState();
}

class _ChpaterDetailsScreenState extends State<ChpaterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/default_bg.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
            appBar: AppBar(
              title: Text(args.title),
            ),
            body: verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : Card(
                    margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return verseWidget(verses[index], index);
                        },
                        itemCount: verses.length,
                        separatorBuilder: (context, index) => Container(
                              color: Theme.of(context).primaryColor,
                              width: double.infinity,
                              height: 2,
                              margin: EdgeInsets.symmetric(horizontal: 64),
                            )),
                  )));
  }

  List<String> verses = [];

  void loadFile(int index) async {
    //async add when we need to use await func
    // await fun used to non blocking code when we use future type
    String fileContent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    verses = fileContent.split('\n');
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String title;
  int index;
  ChapterDetailsArgs(this.title, this.index);
}

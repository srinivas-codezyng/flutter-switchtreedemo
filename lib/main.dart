import 'package:flutter/material.dart';

final style = TextStyle(fontSize: 48);

void main() => runApp(
    WidgetsApp(
      color: Color(0xFFFFFFFF),
      builder: (conext,_) => MyApp(),
    )
);


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State <MyApp> {
    var switchTree = true;

    Widget get firstTree => Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [RichText(text:TextSpan(text:'hello Dart',style: style)),
              SizedBox(width:10),
              ],);

    Widget get secondTree => Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [RichText(text:TextSpan(text:'hello Swift',style: style)),
        Padding(padding:EdgeInsets.only(right: 100)),
      ],);

    Widget get switchButton => GestureDetector(
          child: Padding(
            padding:  const EdgeInsets.only(bottom: 20),
            child: RichText(
                    text:  TextSpan(text: 'Switch Tree'),
             ),
            ),
        onTap:() => setState ( () => switchTree = ! switchTree
      ),
    );

    @override
  Widget build(BuildContext context) {
    return Column( children: [
        switchTree ? firstTree : secondTree,
      switchButton
    ],);
  }
}
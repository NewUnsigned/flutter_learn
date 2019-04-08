import 'package:flutter/material.dart';
import 'package:flutter_learn/modules/TapBox.dart';
import 'package:flutter_learn/modules/Widgets.dart';
import 'package:flutter_learn/modules/FormWidget.dart';
import 'package:flutter_learn/modules/Layout.dart';
import 'package:flutter_learn/page_list.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  final titles = ['Home', 'Message', 'Income', 'My'];

  onClickedHomeButton() {
    setState(() {
      _selectedIndex = 0;
    });
  }

  onClickedMessageButton() {
    setState(() {
      _selectedIndex = 1;
    });
  }

  onClickedIncomButton() {
    setState(() {
      _selectedIndex = 2;
    });
  }

  onClickedMyButton() {
    setState(() {
      _selectedIndex = 3;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(titles[_selectedIndex]),
        ),
        body: Container(
          child: Center(
            child: _selectedIndex > 2 ? PageList() : Widgets(),
          ),
          color: Colors.grey[100],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              IconButton(icon: Image.asset(_selectedIndex == 0 ? 'images/home/tab_home_selected.png' : 'images/home/tab_home.png', 
                          width: 30, height: 30, fit: BoxFit.contain,), onPressed: onClickedHomeButton,),
              IconButton(icon: Image.asset(_selectedIndex == 1 ? 'images/home/tab_message_selected.png' : 'images/home/tab_message.png',
                          width: 30, height: 30, fit: BoxFit.contain,), onPressed: onClickedMessageButton,),
              IconButton(icon: Image.asset(_selectedIndex == 2 ? 'images/home/tab_income_selected.png' : 'images/home/tab_income.png',
                          width: 30, height: 30, fit: BoxFit.contain,), onPressed: onClickedIncomButton,),
              IconButton(icon: Image.asset(_selectedIndex == 3 ? 'images/home/tab_me_selected.png' : 'images/home/tab_me.png',
                          width: 30, height: 30, fit: BoxFit.contain,), onPressed: onClickedMyButton,),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';

class NavigationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text('导航页面'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('下一页'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> new SecondScreen(),
              ));
            },
          ),
        ),
      );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('第二个页面'),),
      body: Center(
        child: RaisedButton(child: Text('返回上一页面'), onPressed: () {
          Navigator.pop(context);
        },),
      ),
    );
  }
}
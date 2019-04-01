import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Widgets extends StatelessWidget {
  Widgets({Key key}) : super(key: key);

    final recognizer = GestureRecognizer();
  
    @override
    Widget build(BuildContext context) {

      return Container(
        child:textfield(),
      );
    }

    Widget textfield() {
      return Padding(padding: EdgeInsets.all(30),
        child: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
          ),
        ],
      ),
      );
    }

    Widget networkImage() {
      return Image(
        image: NetworkImage('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
        width: 100.0,
        fit: BoxFit.fill,
        color: Colors.red,
        colorBlendMode: BlendMode.difference,
      );
    }

    Widget image() {
      return Image(
        image: AssetImage('images/btn_share_local@2x.png'),
        width: 100.0,
      );
    }

    Widget raiseButton() {
      return RaisedButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("Submit"),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => {},
            );
    }
  
    Widget textSpan() {
      return Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'hello:'
            ),
            TextSpan(
              text: 'https://www.baidu.com',
              style: TextStyle(color: Colors.blue),
              recognizer: recognizer
            )
          ]
        )
      );
    }
  
    // 文本组件
    Widget text() {
      return Text("Hello world",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,  
                  fontFamily: "Courier",
                  background: new Paint()..color=Colors.yellow,
                  decoration:TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed
                ),
            );
    }
  
    Widget cupertinoButton() {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('This is a Cupertina Bar'),
        ),
        child: Center(
          child: CupertinoButton(
            color: CupertinoColors.activeGreen,
            child: Text('button' *6, style: TextStyle(
              color: CupertinoColors.destructiveRed,
              fontSize: 24,
              background: new Paint()..color=CupertinoColors.destructiveRed,
            ),),
            onPressed: (){},
          ),
        ),
      );
    }
  
    static GestureRecognizer() {}
}
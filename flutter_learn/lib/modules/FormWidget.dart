import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormTestRouteState();
  }
}

class _FormTestRouteState extends State<FormTestRoute> {
  
  @override
  Widget build(BuildContext context) {
    return specialColumn();
  }

  Widget specialColumn() {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text('hello world'),
                  Text('i am back'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget column() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello World!'),
            Text('I am Back!')
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Hello World!'),
            Text('I am Back!')
          ],
        ), 
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Text('Hello World!'),
            Text('I am Back!')
          ],
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Text('hello world', style: TextStyle(fontSize: 30.0)),
            Text('2')
          ],
        )
      ],
    );
  }
}
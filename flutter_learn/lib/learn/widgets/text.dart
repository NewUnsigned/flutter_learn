import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Text widget',
      home: Scaffold(
        body: Center(
          child: imageWidget(),
        )
      ),
    );
  }

  Widget imageWidget() {
    return Container(
        child: Image.network("http://img02.tooopen.com/images/20150507/tooopen_sy_122395947985.jpg",
        // fit: BoxFit.fitHeight,
        repeat: ImageRepeat.repeatX,
        // color: Colors.blue,
        // colorBlendMode: BlendMode.darken,
        ),
        width: 300.0,
        height: 200.0,
        color: Colors.blue
    );
  }

  Widget contanerWidget() {
    return Container(
      child: Text("Hello world", style: TextStyle(fontSize: 35.0),),
      alignment: Alignment.topLeft,
      padding:const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(15.0),
      width: 500,
      height: 400,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.red,
            Colors.blue,
          ]
        ),
        border: Border.all(
          width: 2.0,
          color: Colors.red
        )
      ),
    );
  }

  Widget textWidget() {
    return Center(
          child: Text("k3wefgpgjephjgrehjktpkkrtphkprkhprtkphrtkhktyhjkrtyhjkrtykhjtypojktyjtypjtypojktpyotyjtyj",
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 25.0,
            color: Color.fromARGB(255, 255, 125, 125),
            decoration: TextDecoration.underline,
          ),),
        );
  }
}
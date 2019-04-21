import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {

  ListDemo({Key key}): super(key: key);

  final List<String> items = ["1", "2"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Demo",
      home: Scaffold(
        appBar: AppBar(title: Text('List Demo'),),
        body: Center(
          child: Container(
            child: grideDelegateDemo()
          )
        ),
      ),
    );
  }

  Widget grideDelegateDemo() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
        childAspectRatio: 0.5,
      ),
      children: <Widget>[
        Image.network('http://img02.tooopen.com/images/20150507/tooopen_sy_122395947985.jpg', fit: BoxFit.fill,),
        Image.network('http://img02.tooopen.com/images/20150507/tooopen_sy_122395947985.jpg', fit: BoxFit.fill,),
        Image.network('http://img02.tooopen.com/images/20150507/tooopen_sy_122395947985.jpg', fit: BoxFit.fill,),
        Image.network('http://img02.tooopen.com/images/20150507/tooopen_sy_122395947985.jpg', fit: BoxFit.fill,),
        Image.network('http://img02.tooopen.com/images/20150507/tooopen_sy_122395947985.jpg', fit: BoxFit.fill,),
        Image.network('http://img02.tooopen.com/images/20150507/tooopen_sy_122395947985.jpg', fit: BoxFit.fill,),
      ],
    );
  }

  Widget gridViewDemo() {
    return GridView.count(
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 3,
      children: <Widget>[
        const Text('grid 1'),
        const Text('grid 2'),
        const Text('grid 3'),
        const Text('grid 4'),
        const Text('grid 5'),
        const Text('grid 6'),
        const Text('grid 7'),
        const Text('grid 8'),
      ],
    );
  }
  
  Widget lengthChangedDemo() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: this.items.length,
      itemBuilder: (context,index) {
        return ListTile(
          title: Text('${items[index]}'),
        );
      },
    );
  }

  Widget listViewDemo() {
    return ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(width: 100.0, color: Colors.red,),
                Container(width: 100.0, color: Colors.blue,),
                Container(width: 100.0, color: Colors.red,),
                Container(width: 100.0, color: Colors.yellow,),
                Container(width: 100.0, color: Colors.red,),
              ],
          );
  }
}
import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Demo",
      home: Scaffold(
        appBar: AppBar(title: Text("Layout Demo"),),
        body: cardLayout(),
      ),  
    );
  }

  Widget cardLayout() {
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('hhhh'),
            subtitle: Text('zi biao ti'),
            leading: Icon(Icons.perm_contact_calendar, color: Colors.red,),
          ),
          ListTile(
            title: Text('aaaa'),
            subtitle: Text('zi biao ti'),
            leading: Icon(Icons.access_alarm),
          ),
          ListTile(
            title: Text('hbbbbhhh'),
            subtitle: Text('zi biao ti'),
            leading: Icon(Icons.access_alarm),
          )
        ],
      ),
    );

    return card;
  }

  Widget positionedLayout(){
      var statck = Stack(
        alignment: const FractionalOffset(0.5, 0.8),
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage('http://img02.tooopen.com/images/20150507/tooopen_sy_122395947985.jpg',),
            radius: 100.0,
          ),
          Positioned(
            top: 10.0,
            left: 10.0,
            child: Text('JSPsjosfojdi'),
          )
        ],
    );

    return Center(
      child: statck,
    );
  }

  Widget stackLayout(){
    var statck = Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('http://img02.tooopen.com/images/20150507/tooopen_sy_122395947985.jpg',),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          padding: const EdgeInsets.all(10.0),
          child: Text('JSPsjosfojdi'),
        )
      ],
    );

    return Center(
      child: statck,
    );
  }

  Widget columDemo() {
    return Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Text("di yi hang"),
      Expanded(child:Text("di yi hanre4grthhrtjhtyrtyg")),
      Text("di yi hang"),
    ],),
    );
  }
}
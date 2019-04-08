import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class PageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return builderList();
  }

  Widget builderList() {

    final List<String> titles = <String>['我的勋章1', '店铺公告', '店家修'];
    final List<String> images = <String>['icon_me_medal.png', 'icon_me_notice.png', 'icon_me_show.png'];

    return ListView.separated(
      itemCount: titles.length,
      itemBuilder: (BuildContext context,int index){

        final title = titles[index];

        return Container(
          height: 60.0,
          alignment: Alignment.centerLeft,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Image.asset('images/settings/${images[index]}', width: 44, height: 24,fit: BoxFit.contain,),
              Text('${titles[index]}')
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(height: 1.0, color: Colors.black12, indent: 15.0,)
    );
  }

  Widget customList() {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(10.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                const Text('xxxxx'),
                const Text('xxxxx'),
                const Text('xxxxx'),
                const Text('xxxxx'),
              ],
            ),
          )
        )
      ],
    );
  }

  Widget seperateList() {

    final List<String> words = <String>['A', 'B', 'C'];
    final List<int> colors = <int>[100, 50, 100];

    return ListView.separated(
      padding: const EdgeInsets.all(10.0),
      itemCount: words.length,
      itemBuilder: (BuildContext context,int index){
        return Container(
          height: 50.0,
          color: Colors.amber[colors[index]],
          child: Center(child: Text('hahaha${words[index]}'),),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(height: 1.0, color: Colors.black26, indent: 15.0,)
    );
  }

  Widget normalList() {
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: <Widget>[
        Container(
          height: 50.0,
          color: RandomColor().randomColor(),
          child: const Center(child: Text('A'),),
        ),
        Container(
          height: 50.0,
          color: RandomColor().randomColor(),
          child: const Center(child: Text('B'),),
        ),
        Container(
          height: 50.0,
          color: RandomColor().randomColor(),
          child: const Center(child: Text('B'),),
        ),
      ],
    );
  }
}
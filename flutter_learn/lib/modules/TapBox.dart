import 'package:flutter/material.dart';

class ParentBox extends StatefulWidget {

  @override
  _ParentBoxState createState() => _ParentBoxState();
  // 等价于下面这种形式
  // State<StatefulWidget> createState() {
  //   return _ParentBoxState();
  // }
}

class _ParentBoxState extends State<ParentBox> {

  bool _active = false;

  void didTapBox(bool active) {
    setState(() {
      _active = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BoxTapB(
        active: _active,
        onChanged: didTapBox,
      ),
    );
  }
}

// Box类 继承StatelessWidget
class BoxTapB extends StatelessWidget {
  // 初始化
  BoxTapB({Key key,this.active : false, @required this.onChanged})
        : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handlerTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handlerTap,
      child: Container(
        child: Center(
          child: Text(
            active ? 'active' : 'Inactive',
            style: TextStyle(fontSize: 24, color: Colors.yellow),
          ),
        ),
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
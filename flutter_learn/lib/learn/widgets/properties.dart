import 'package:flutter/material.dart';

class Product {
  // 商品标题
  final String title;
  // 商品描述
  final String description;

  Product(this.title, this.description);
}

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "商品列表",
      home: ProductListDemo(),
    );
  }
}

class ProductListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('作品列表'),
      ),
      body: ProductList(
        products: List.generate(20, (i)=>Product('商品 $i', "这时一个商品详情，编号为$i"))
      ),
    );
  }
}

class ProductList extends StatelessWidget {

  final List<Product> products;
  
  ProductList({Key key, @required this.products}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(this.products[index].title),
            onTap: (){
              _onpressedList(context, index);
            },
          );
        },
      );
  }

  _onpressedList(BuildContext context, int index) async {
    final result = await Navigator.push(context, MaterialPageRoute(
      builder: (context) => ProductDetail(product:products[index])
    ));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text(result),));
  }
}

class ProductDetail extends StatelessWidget {

  final Product product;

  ProductDetail({Key key, @required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品详情"),),
      body: Column(
        children: <Widget>[
          RaisedButton(child: Text('第一个'), onPressed: () {
            Navigator.pop(context, '点击了第一个按钮');
          },),
          RaisedButton(child: Text('第二个'), onPressed: () {
            Navigator.pop(context, '点击了第二个按钮');
          },),
          RaisedButton(child: Text('第三个'), onPressed: () {
            Navigator.pop(context, '点击了第三个按钮');
          },)
        ],
      )
    );
  }
}

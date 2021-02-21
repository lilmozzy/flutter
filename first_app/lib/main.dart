import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> products = ['Smart Mask'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Airmask'),
          ),
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(1.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: const Text('Add Product'),
                ),
              ),
              Column(
                children: products
                    .map((String element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/nicemask.jpg'),
                              Text(element)
                            ],
                          ),
                        ))
                    .toList(),
              )
            ],
          )),
    );
  }
}

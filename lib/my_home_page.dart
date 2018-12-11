import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(16.0),
                child: Text("Header 1"),
                color: Colors.grey[200],
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: Text("Header 2"),
                color: Colors.grey[200],
              ),
              ListView(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 200.0,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100.0,
                    width: 200.0,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100.0,
                    width: 200.0,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

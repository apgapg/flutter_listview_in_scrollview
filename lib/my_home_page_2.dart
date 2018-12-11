import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  HeaderWidget("Header 1"),
                  HeaderWidget("Header 2"),
                  HeaderWidget("Header 3"),
                  HeaderWidget("Header 4"),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  BodyWidget(Colors.blue),
                  BodyWidget(Colors.red),
                  BodyWidget(Colors.green),
                  BodyWidget(Colors.orange),
                  BodyWidget(Colors.blue),
                  BodyWidget(Colors.red),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildListDelegate(
                [
                  BodyWidget(Colors.blue),
                  BodyWidget(Colors.green),
                  BodyWidget(Colors.yellow),
                  BodyWidget(Colors.orange),
                  BodyWidget(Colors.blue),
                  BodyWidget(Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String text;

  HeaderWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(text),
      color: Colors.grey[200],
    );
  }
}

class BodyWidget extends StatelessWidget {
  final Color color;

  BodyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      alignment: Alignment.center,

    );
  }
}

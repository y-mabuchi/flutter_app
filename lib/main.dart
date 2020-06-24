import 'package:flutter/material.dart';

void main() => runApp(MyApp4());

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter assets demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter assets demo'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Image.asset('images/karaage-100px.png'),
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset('images/karaage-100px.png'),
                ),
                Expanded(
                  child: Image.asset('images/karaage-100px.png'),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demo'),
          ),
          body: Center(
            child: Text('Hello World'),
          ),
        ),
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Text(
            'Flutter Demo Home Page',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
      ));
}

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the buttun this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
      );

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}

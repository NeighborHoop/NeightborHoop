import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.amber[900]),
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(title: Text('NeighborHoop')),
        body: NameCard()
    );
  }
}

class NameCard extends StatefulWidget {
  @override
  NameCardState createState() => NameCardState();
}

class NameCardState extends State<NameCard> {
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 300,
            height: 100,
            child: Text('Phil the hooper'),
          ),
        ),
      ),
    );
  }
}


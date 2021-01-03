import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  @override
  StartState createState() => StartState();
}

class StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text('FIND OPPONENT'),
          ),
          body: TabBarView(children: <Widget>[
            OpponentMap(),
          ]),
        ));
  }
}

class OpponentMap extends StatefulWidget {
  @override
  OpponentMapState createState() => OpponentMapState();
}

class OpponentMapState extends State<OpponentMap> {
  Widget build(BuildContext context) {
    return Center(child: Text("Put Google map here and add functions to it\n Need to work with backend implementation together"));
  }
}

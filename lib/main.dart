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
        theme: ThemeData(primaryColor: Colors.orange[800]),
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
    return DefaultTabController(
      length: 2, 
      child:Scaffold (
          appBar: AppBar(
            title: Text('NeighborHoop'),
            leading: IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){},
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Settings',
                onPressed: (){}
              )
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "PROFILE",
                ),
                Tab(
                  text: "RIVALRY"
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              NameCard(),
              NameCard(),
            ]),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: (){},
            label: Text('Start Game!'),
            backgroundColor: Colors.red,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      )
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


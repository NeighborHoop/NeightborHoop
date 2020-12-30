import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';
import './profile.dart';
import './avatar.dart';
import './NameCard.dart';
import './settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.orange[800]), home: HomePage(),
        routes: {
          '/avatar': (_) => Avatar()
        });
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
        child: Scaffold(
          appBar: AppBar(
            title: Text('NeighborHoop'),
            leading: IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(
                      context, 
                      // MaterialPageRoute(builder: (context) => Avatar()),
                      SlideRightRoute(page: Avatar())
                    );
              },
            ),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      // MaterialPageRoute(builder: (context) => Settings()),
                      SlideLeftRoute(page: Settings())
                    );
                  },)
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "PROFILE",
                ),
                Tab(text: "RIVALRY")
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            Profile(),
            NameCard(),
          ]),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              print('Start game!');
            },
            label: Text('Start Game!'),
            backgroundColor: Colors.red,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
        );
}

class SlideLeftRoute extends PageRouteBuilder {
  final Widget page;
  SlideLeftRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
        );
}
import 'package:flutter/material.dart';
import './slide_animation.dart';
import './FriendList.dart';

class Avatar extends StatefulWidget {
  @override
  AvatarState createState() => AvatarState();
}

class AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text('PLAYER PROFILE'),
          ),
          body: TabBarView(children: <Widget>[
            PlayerProfile(),
          ]),
        ));
  }
}

class PlayerProfile extends StatefulWidget {
  @override
  PlayerProfileState createState() => PlayerProfileState();
}

class PlayerProfileState extends State<PlayerProfile> {
  String name = "Billy";
  String email = "123@gmail.com";
  String number = "123456789";
  String location = "Ontario, Canada";
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text('$name'),
        tileColor: Colors.amber[600],
      ),
      ListTile(
        leading: Icon(Icons.mail),
        title: Text('$email'),
        tileColor: Colors.amber[600],
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('$number'),
        tileColor: Colors.amber[600],
      ),
      ListTile(
        leading: Icon(Icons.pin_drop),
        title: Text('$location'),
        tileColor: Colors.amber[600],
      ),
      ListTile(
        leading: Icon(Icons.list),
        title: Text('Friends'),
        tileColor: Colors.amber[600],
        onTap: (){
          Navigator.push(
            context, 
            // MaterialPageRoute(builder: (context) => Settings()),
            ScaleRoute(page: FriendList())
          );
        },
      )
    ]);
  }
}
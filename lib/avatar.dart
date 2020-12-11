import 'package:flutter/material.dart';

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
            title: Text('NeighborHoop'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "PLAYER PROFILE",
                ),
              ],
            ),
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
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      ListTile(
        title: Text('$name'),
        subtitle: Text('Name'),
        tileColor: Colors.amber[600],
        onTap: () => setState(() {
          name = "Phil";
          print(name);
        }),
        trailing: IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Change Name',
            onPressed: () {
              setState(() {
                name = "Billy";
              });
            }),
      ),
      ListTile(
        title: Text('${email}'),
        subtitle: Text('Email'),
        tileColor: Colors.amber[600],
        trailing: IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Change Email',
            onPressed: () {
              print('setemail');
            }),
      ),
      ListTile(
        title: Text('${number}'),
        subtitle: Text('Phone Number'),
        tileColor: Colors.amber[600],
        trailing: IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Change Phone Number',
            onPressed: () {
              print('setnumber');
            }),
      ),
    ]);
  }
}

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Settings'),
          ),
          body: TabBarView(children: <Widget>[
            SettingControl(),
          ]),
        ));
  }
}

class SettingControl extends StatefulWidget {
  @override
  SettingControlState createState() => SettingControlState();
}

class SettingControlState extends State<SettingControl> {
  String name = "Billy";
  String location = "The Collegeway, Mississauga, CA";
  String email = "123@gmail.com";
  String number = "123456789";
  
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      ListTile(
        leading: Icon(Icons.account_circle),
        title: new Text('$name'),
        tileColor: Colors.amber[600],
        trailing: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text("Enter New Name"),
                  content: new TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'New Name',
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Change'),
                      onPressed: () {
                        setState(() {
                          name = myController.text;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              );
            }),
      ),
      ListTile(
        leading: Icon(Icons.pin_drop),
        title: new Text('$location'),
        tileColor: Colors.amber[600],
        trailing: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text("Enter New Location"),
                  content: new TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'New Location',
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Change'),
                      onPressed: () {
                        setState(() {
                          location = myController.text;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              );
            }),
      ),
      ListTile(
        leading: Icon(Icons.mail),
        title: new Text('$email'),
        tileColor: Colors.amber[600],
        trailing: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text("Enter New Email"),
                  content: new TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'New Email',
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Change'),
                      onPressed: () {
                        setState(() {
                          email = myController.text;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              );
            }),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: new Text('$number'),
        tileColor: Colors.amber[600],
        trailing: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text("Enter New Number"),
                  content: new TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'New Number',
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Change'),
                      onPressed: () {
                        setState(() {
                          number = myController.text;
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              );
            }),
      ),
      ListTile(
        title: Center(child: new Text('LOGOUT')),
        tileColor: Colors.amber[600],
        onTap: (){
          showDialog(
              context: context,
              child: new AlertDialog(
                title: new Center(child: Text("Logout Success"))
              )
            );
        },
      ),
    ]);
  }
}

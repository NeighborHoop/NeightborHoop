import 'package:flutter/material.dart';


class FriendList extends StatefulWidget {
  @override
  FriendListState createState() => FriendListState();
}

class FriendListState extends State<FriendList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Friends'),
          ),
          body: TabBarView(children: <Widget>[
            FriendInfo(),
          ]),
        ));
  }
}

class FriendInfo extends StatefulWidget {
  @override
  FriendInfoState createState() => FriendInfoState();
}

class FriendInfoState extends State<FriendInfo> {
  static const String remove = "Remove";
  static const String rate = "Rate";
  @override 
  Widget build(BuildContext context){
    return ListView(
      padding: const EdgeInsets.all(20),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Center(child: Text('Shawn')),
          tileColor: Colors.amber[600],
          trailing: PopupMenuButton<String>(
                onSelected: (String result) { choiceAction(result); },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: remove,
                    child: Text('Remove'),
                  ),
                  const PopupMenuItem<String>(
                    value: rate,
                    child: Text('Rate'),
                  ),
                ],
              )
          )
      ]
    );
  } 
}

void choiceAction(result){
  if(result == "Remove"){
    print("Remove");
  }
  else if(result == "Rate"){
    print("Rate");
  }
}
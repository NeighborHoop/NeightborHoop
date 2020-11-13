import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  final List<String> entries = <String>['Shoot', 'Rebound', 'Assist', 'Win Rate', 'Rating'];
  Widget build(BuildContext context){
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[600],
          child: Center(child: Text('${entries[index]}')),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
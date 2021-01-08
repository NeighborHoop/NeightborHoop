import 'package:flutter/material.dart';
import './SharedData.dart';

class Profile extends StatefulWidget{
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  final List<String> entries = <String>['POINTS', 'SHOOT', 'REBOUND', 'ASSIST', 'WIN RATE', 'RATING'];
  List<int> attributes = [Billy.points, 0, 0, 0, 0, 0];
  Widget build(BuildContext context){
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
        leading: Text('${entries[index]}'),
        title: Center(child: Text('${attributes[index]}'),),
        tileColor: Colors.amber[600],
        trailing: Wrap(
            spacing: 10,
            children: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  if(attributes[0] > 0){
                    attributes[index] += 1;
                    attributes[0] -= 1;
                  }
                });
              },),
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  if(attributes[index] > 0){
                    attributes[index] -= 1;
                    attributes[0] += 1;
                  }
                });
              },),
          ]),
      );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
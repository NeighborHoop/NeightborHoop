import 'package:flutter/material.dart';

class Rivalry extends StatefulWidget{
  @override
  RivalryState createState() => RivalryState();
}

class RivalryState extends State<Rivalry> {
  List<String> attributeList = ['POINT', 'LOCATION', 'WIN RATE','STREAK'];
  List<String> valueList = ['15', 'Ontario, Canada', '66%','0'];
  Widget build(BuildContext context){
    return ListView(
      padding: const EdgeInsets.all(20),
      children: <Widget>[
        ListTile(
          leading: Text('WIN'),
          title: Center(child: Text('Phil')),
          tileColor: Colors.amber[600],
          trailing: Text('+1'),
          onTap: (){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Phil'),
                  content: Container(
                    width: double.minPositive,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: attributeList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Text(attributeList[index]),
                          title: Text(valueList[index]),
                          onTap: () {
                            Navigator.pop(context, attributeList[index]);
                          },
                        );
                      },
                    ),
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: (){
                        setState((){
                          print('add friend');
                        });
                      },
                    )
                  ],
                );
              });
          },
        ),
        ListTile(
          leading: Text('LOSE'),
          title: Center(child: Text('Shawn Brian')),
          tileColor: Colors.amber[600],
          trailing: Text('-2'),
        ),
      ]
    );
  }
}
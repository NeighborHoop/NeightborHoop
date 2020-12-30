import 'package:flutter/material.dart';

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
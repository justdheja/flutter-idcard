import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdCard(),
));

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Text(
          'ID Card',
          style: TextStyle(
            color: Colors.red[900], 
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[350],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red[900],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.grey[400],
            ),
            Text(
              'Nama',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 2.0
              )
            ),
            SizedBox(height: 10.0),
            Text(
              'Dheja',
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.red[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30.0),
            Text(
              'Projects',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 2.0
              )
            ),
            SizedBox(height: 10.0),
            Text(
              '$age',
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.red[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.red[900]
                ),
                SizedBox(width: 10.0),
                Text(
                  'justdheja@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18.0,
                    letterSpacing: 2.0
                  ),
                )
              ]
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.public,
                  color: Colors.red[900]
                ),
                SizedBox(width: 10.0),
                Text(
                  'justdheja.rf.gd',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18.0,
                    letterSpacing: 2.0
                  ),
                )
              ]
            ),
          ],
        ),
      ),
    );
  }
}


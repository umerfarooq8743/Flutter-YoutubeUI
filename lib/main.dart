import 'package:flutter/material.dart';

import 'appbars.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
       // accentColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget eachvideo(String asset, String title) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(asset),
            Positioned.fill(
              bottom: 10.0,
              right: 10.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "20:10",
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.black,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assests/logo.jpg'),
            ),
            title: Text(
              "$title",
              textAlign: TextAlign.start,
            ),
            subtitle: Text(
              "Desi Programmer - 200 Views - 1 Hour",
            ),
            trailing: Icon(Icons.more_vert, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10.0,
          child: Container(
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar: bottomappbar,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            eachvideo(
                "assests/thumb0.png", "Working With Databases In Flutter"),
            eachvideo(
                "assests/thumb1.png", "Working With Databases In Flutter"),
            eachvideo(
                "assests/thumb2.png", "Working With Databases In Flutter"),
            eachvideo(
                "assests/thumb3.png", "Working With Databases In Flutter"),
            eachvideo(
                "assests/thumb4.png", "Working With Databases In Flutter"),
          ],
        ),
      ),
    );
  }
}

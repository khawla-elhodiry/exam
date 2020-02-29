import 'package:flutter/material.dart';

import 'deatials.dart';
import 'movie.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
            children: <Widget>[
              ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('img/parasite.jpg'),
                  ),
                title: Text('parasite'),

              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('img/parasite.jpg'),
                ),
                title: Text('parasite'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('img/parasite.jpg'),
                ),
                title: Text('parasite'),
              ),
            ],
          ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Ahmed '),

              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Top movies'),
              leading: Icon(Icons.movie),
              onTap: () {

              },
            ),
            ListTile(
              title: Text('About App' ),
              leading: Icon(Icons.info),

              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => about())
                );
              },
            ),
          ],
        ),
      ),
      );

  }
}

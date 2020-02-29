import 'package:flutter/material.dart';

import 'deatials.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" About App"),
      ),
      body: Column(
        children: <Widget>[
          topContent, bottomContent , grid
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

              onTap: (
                  ) {

              },
            ),
          ],
        ),
      ),
    );

  }
}
final topContent = Container(
  height: 250.0,
  child: new Image.asset("img/2.jpg",fit: BoxFit.cover,),
);
final bottomContent = Container(
  height: 220.0,
  child: SingleChildScrollView(
    padding: EdgeInsets.all(16.0),
    child: Text(
      '      The Movie Database (TMDb) is a community built                                             '
          '  movie and TV database. Every piece of data has'
          'been added by our amazing community datsing back'
          'been added by our amazing community dating back'
          'breadth of data is largely unmatched and something  ',
      style: TextStyle(fontSize:15.0, height: 1.5),
    ),
  ),
);

final grid = Container(
  height: 220.0,
  child: GridView.count(
    padding: EdgeInsets.all(16.0),
    crossAxisCount: 2,
    children: <Widget>[
      Container(padding: EdgeInsets.all(16.0),

        child: const Text('526,446'
                           'Movies'
        ),
      ),
      Container(padding: EdgeInsets.all(16.0),

        child: const Text('89,915'
            'TV Shows'
        ),
      ),
      Container(padding: EdgeInsets.all(16.0),

        child: const Text('127,114'
            'TV Seasonss'
        ),
      ),
      Container(padding: EdgeInsets.all(16.0),

        child: const Text('526,446'
            'Movies'
        ),
      ),
    ],
  ),
);



// Group Members(Grp 2):
//  Okasha Arshad(20K-1868) 
//  Hamza Faheem(20K-1884)
//  Syed Najeeb Ahmed(20K-1871)
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('List App'),
        ),
        drawer: MediaQuery.of(context).orientation == Orientation.portrait
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      child: Text('Drawer Header'),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: Text('Item 1'),
                      onTap: () {
                        // Handle onTap for item 1
                      },
                    ),
                    ListTile(
                      title: Text('Item 2'),
                      onTap: () {
                        // Handle onTap for item 2
                      },
                    ),
                    // Add more ListTile widgets as needed
                  ],
                ),
              )
            : null,
        body: ScrollableList(),
      ),
    );
  }
}

class ScrollableList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    // Define the number of cross-axis items based on orientation
    final crossAxisCount = orientation == Orientation.portrait ? 1 : 2;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        // Adjust index to start from 1 instead of 0
        final adjustedIndex = index + 1;
        return Card(
          color: Colors.yellow,
          child: ListTile(
            title: Center(
              child: Text(
                'Card $adjustedIndex',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

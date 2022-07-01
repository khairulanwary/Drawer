import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Drawer In Flutter',
      home: ShowDrawer(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShowDrawer extends StatelessWidget {
  const ShowDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Drawer In Flutter',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text('Drawer Header',
                    style: TextStyle(color: Colors.black, fontSize: 24.0)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Center(
        child: const Text('This Is Home Page',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
      ),
    );
  }
}

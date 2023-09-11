import 'package:flutter/material.dart';

void main() {
  runApp(const BlessingsTrackerApp());
}

class BlessingsTrackerApp extends StatelessWidget {
  const BlessingsTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blessings Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Blessings Tracker',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  // Navigator.pop(context);    //TODO fix this navigation
                  print("Luls");
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Navigator.pop(context);    //TODO fix this navigation
                },
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text(
            "Let it be accepted"
          ),
        ),
      ),
    );
  }
}

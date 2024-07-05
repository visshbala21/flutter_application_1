import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Account'),
            leading: Icon(Icons.person),
            onTap: () {
              // Account settings action
            },
          ),
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications),
            onTap: () {
              // Notifications settings action
            },
          ),
          ListTile(
            title: Text('Privacy'),
            leading: Icon(Icons.lock),
            onTap: () {
              // Privacy settings action
            },
          ),
          ListTile(
            title: Text('Help & Support'),
            leading: Icon(Icons.help),
            onTap: () {
              // Help & Support action
            },
          ),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.info),
            onTap: () {
              // About action
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Your Tests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/tests');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/');
          }
        },
      ),
    );
  }
}

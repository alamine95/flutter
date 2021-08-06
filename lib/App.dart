 
import 'package:email_app/AppDrawer.dart';
import 'package:email_app/CalendarScreen.dart';
import 'package:email_app/ContactsScreen.dart';
import 'package:email_app/MessageList.dart';
import 'package:email_app/inboxScreen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: [
          InboxScreen(),
          ContactsScreen(),
          CalendarScreen()
        ].elementAt(_selectedIndex),
            bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: Text("Inbox"),
              icon: Icon(Icons.mail)
          ),
          BottomNavigationBarItem(
              title: Text("Contacts"),
              icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
              title: Text("Calendar"),
              icon: Icon(Icons.calendar_today),
          ),
        ],
              onTap: _onBarItemTap,
              currentIndex: _selectedIndex,
    ),
    );
  }

  void _onBarItemTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}

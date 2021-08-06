
import 'package:email_app/AppDrawer.dart';
import 'package:email_app/ContactManager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  ContactManager manager = ContactManager();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contacts"),
        ),
        drawer: AppDrawer(),
        body: StreamBuilder<List<String>>(
          stream: manager.contactListNow,
            builder: (context, snapshot) {
            List<String> contacts = snapshot.data;
            return ListView.separated(
              itemCount: contacts.length,
              itemBuilder: (BuildContext context, int index) {
                return Text("Test");
             },
              separatorBuilder: (context, index) => Divider(),
            );
          }
        ),
      ),
    );
  }
}



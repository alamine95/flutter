import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
         accountEmail: Text("monemail@email.com"),
         accountName: Text("Lamine"),
         currentAccountPicture: CircleAvatar(
         backgroundImage: NetworkImage(
           "https://media-exp1.licdn.com/dms/image/C4D03AQHI1wUbI5ZdQw/profile-displayphoto-shrink_100_100/0?e=1605744000&v=beta&t=8Vcq44Y9-IYr1UEwmnGExhEEBs2hbRchREVu7N7i-LQ"),
           ),
          otherAccountsPictures: <Widget>[
          GestureDetector(
            onTap: (){
            showDialog(context: context, builder: (context) {
            return AlertDialog(title: Text("Adding new account..."));
                 });
                },
            child: CircleAvatar(
                child: Icon(Icons.add),
                ),
              )
              ],
             ),
         ListTile(
             leading: Icon(FontAwesomeIcons.inbox),
             title: Text("Inbox"),
            trailing: Chip(
               label: Text("11", style: TextStyle(fontWeight: FontWeight.bold)),
             backgroundColor: Colors.blue[100],
             )),
           ListTile(
              leading: Icon(FontAwesomeIcons.edit),
               title: Text("Draft"),
               ),
           ListTile(
             leading: Icon(FontAwesomeIcons.archive),
             title: Text("Archive"),
              ),
           ListTile(
              leading: Icon(FontAwesomeIcons.paperPlane),
              title: Text("Sent"),
                 ),
            ListTile(
               leading: Icon(FontAwesomeIcons.trash),
               title: Text("Trash"),
               ),
            Divider(),
            Expanded(
                child: Align(
                alignment: FractionalOffset.bottomCenter,
                    child: ListTile(
                       leading: Icon(FontAwesomeIcons.cog),
                        title: Text("Settings"),
                        ),
                      ),
                    ),

                 ],
               ),
             );
  }
}

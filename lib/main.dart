import 'package:email_app/App.dart';
import 'package:flutter/material.dart';

import 'MessageList.dart';

void main() => runApp(EmailApp());

class EmailApp extends StatelessWidget {

  @override  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.red),
      home: App(),
    );
  }
}





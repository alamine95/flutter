import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

part 'Message.g.dart';

@JsonSerializable()
class Message {
  final String subject;
  final String body;

  Message(this.subject, this.body);

  factory Message.fromJson(Map<String, dynamic> json)=>
      _$MessageFromJson(json);

  static Future<List<Message>> browse({status = 'important'}) async {

      String url = status == 'important'
      ? 'https://run.mocky.io/v3/7b79a58e-09b9-442d-bda8-fc24f123d996'
      : 'http://www.mocky.io/v2/5ecea2c43000007f00ea13c2';

      http.Response response =
      await http.get(url);



      await Future.delayed(Duration(seconds: 1));

      String content = response.body;
      List collection = json.decode(content);
      List<Message> _messages =
      collection.map((json) => Message.fromJson(json)).toList();

      return _messages;
    }

}
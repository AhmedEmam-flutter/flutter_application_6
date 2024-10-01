import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class Chatindividdal extends StatefulWidget {
  Chatindividdal({super.key, required this.image, required this.name});
  String image;
  String name;

  @override
  State<Chatindividdal> createState() => _ChatindividdalState();
}

class _ChatindividdalState extends State<Chatindividdal> {
  List<types.Message> _messages = [];
  final _user = const types.User(id: '22');
  final List<String> messages = [];
  final TextEditingController _con = TextEditingController();
  final ScrollController _scrollcon = ScrollController();

  void pressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: _messages.length.toString(),
      text: message.text,
    );

    setState(() {
      _messages.insert(0, textMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new_outlined)),
              Container(
                width: 30,
                height: 40,
                decoration: BoxDecoration(
                 shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          title: Center(child: Text(widget.name)),
        ),
        body: Chat(
          messages: _messages,
          onSendPressed: pressed,
          user: _user,
        ),
      ),
    );
  }
}

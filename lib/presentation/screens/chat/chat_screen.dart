import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:mini_chat/widgets/chat/bubble_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tio Obama 💁🏿‍♂️'),
          // centerTitle: true,
          shadowColor: const Color(0x8790E8F8),
          elevation: 2,
          leading: const Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/President_Barack_Obama.jpg/800px-President_Barack_Obama.jpg',
              ),
            ),
          ),
        ),
        body: const _ChatView(),
      ),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              // final String sentence = generateWordPairs().toList().join(' ');
              // print(sentence);
              return const BubbleMessage(sentence: 'hola mundo feliz');
            },
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message.bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message.bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding:  EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://as1.ftcdn.net/v2/jpg/01/21/93/74/1000_F_121937450_E3o8jRG3mKbMaAFprSuNOlyrLraSVVua.jpg'),
          ),
        ),
        title:Text('My love'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                return (index % 2 == 0) ? const HerMessageBubble() : const MyMessageBubble();
              },)
            ),
            
            Text('Example'),
        
          ],
        ),
      ),
    );
  }
}
// ignore_for_file: file_names

import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import 'body.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedBottomNav = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarBuilder(),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kPrimaryColor,
          child: Icon(
            Icons.person_add_alt_1,
            color: Theme.of(context).scaffoldBackgroundColor,
          )),
      bottomNavigationBar: bottomNavB(),
    );
  }

  BottomNavigationBar bottomNavB() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Peoples'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/user_3.png')),
            label: 'Profile')
      ],
      currentIndex: _selectedBottomNav,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          _selectedBottomNav = value;
        });
      },
    );
  }

  AppBar appbarBuilder() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text('Chats'),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
  }
}

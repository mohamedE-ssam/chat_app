import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: meassagAppBar(),
    );
  }

  AppBar meassagAppBar() {
    return AppBar(
      title: Row(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_3.png'),
          ),
          SizedBox(
            width: kDefaultPadding * 0.75,
          ),
          Text('3m ago')
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.call),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.videocam),
          onPressed: () {},
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}

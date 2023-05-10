import 'package:chat_app/constants.dart';
import 'package:chat_app/models/Chat.dart';
import 'package:chat_app/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

import '../../components/filled_outline_button.dart';
import 'chat_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: 'Recent Message',
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: 'Active',
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (BuildContext context, int index) => ChatCard(
              chat: chatsData[index],
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MessageScreen()));
              },
            ),
          ),
        )
      ],
    );
  }
}

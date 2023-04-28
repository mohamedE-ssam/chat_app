import 'package:chat_app/screens/signin_signup/signin_signup_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset("assets/images/welcome_image.png"),
          const Spacer(
            flex: 3,
          ),
          Text('Welcome to my freedom \nmessaging app',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
          const Spacer(),
          Text('Freedom talk any person of your \nmother language ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium),
          const Spacer(
            flex: 3,
          ),
          FittedBox(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const SigninSignoutScreen()));
              },
              child: Row(
                children: [
                  Text(
                    'Skip',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .color!
                            .withOpacity(0.8)),
                  ),
                  const SizedBox(
                    width: kDefaultPadding / 4,
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                      color: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .color!
                          .withOpacity(0.8)),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

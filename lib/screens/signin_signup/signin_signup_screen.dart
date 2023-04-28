import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import '../../components/primary_button.dart';

class SigninSignoutScreen extends StatelessWidget {
  const SigninSignoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset(
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? "assets/images/Logo_light.png"
                : "assets/images/Logo_dark.png",
            height: 200,
          ),
          const Spacer(),
          PrimaryButton(
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {},
            title: 'Sign IN',
          ),
          const SizedBox(
            height: kDefaultPadding * 1.5,
          ),
          PrimaryButton(
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
            title: 'Sign Up',
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}

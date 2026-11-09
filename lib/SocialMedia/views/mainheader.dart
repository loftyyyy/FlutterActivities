import 'package:activities/SocialMedia/model/userdata.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  final Userdata userdata;

  const MainHeader({super.key, required this.userdata});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(userdata.myUserAccount.img),
          radius: 40,
        ),
        Text(
          userdata.myUserAccount.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        Text(userdata.myUserAccount.email),
        const SizedBox(height: 20),
      ],
    );
  }
}

import 'package:activities/SocialMedia/model/userdata.dart';
import 'package:flutter/material.dart';

class Infoheader extends StatelessWidget {
  
  const Infoheader({super.key, required this.userdata});

  final Userdata userdata;

  final followTextStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Followers'),
            Text('Following'),
            Text('Posts')
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(userdata.myUserAccount.numFollowers, style: followTextStyle),
            Text(userdata.myUserAccount.numFollowing, style: followTextStyle),
            Text(userdata.myUserAccount.numPosts, style: followTextStyle),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(color: Colors.grey,)
      ],
    );
  }
}
import 'package:activities/SocialMedia/model/userdata.dart';
import 'package:activities/SocialMedia/views/friendlist.dart';
import 'package:activities/SocialMedia/views/infoheader.dart';
import 'package:activities/SocialMedia/views/mainheader.dart';
import 'package:activities/SocialMedia/views/postlist.dart';
import 'package:flutter/material.dart';

class Socialmedia extends StatefulWidget {
  const Socialmedia({super.key});

  @override
  State<Socialmedia> createState() => SocialmediaState();
}

class SocialmediaState extends State<Socialmedia> {
  Userdata userdata = Userdata();

  var followTextStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          MainHeader(userdata: userdata),
          Infoheader(userdata: userdata),
          Friendlist(userdata: userdata),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(children: [
              Text('Posts', style: followTextStyle),
            ],),
          ),
          const SizedBox(height: 20,),
          Postlist(userdata: userdata),
        ],
      ),
    );
  }
}
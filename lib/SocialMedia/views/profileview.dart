import 'package:activities/SocialMedia/model/usercomment.dart';
import 'package:activities/SocialMedia/model/userdata.dart';
import 'package:activities/SocialMedia/model/userpost.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key, required this.userpost});

  final Userpost userpost;
  final Userdata userdata =  Userdata();

  var nameTextStyle = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  var boldTextStyle = const TextStyle(fontWeight: FontWeight.bold);

  var boldTextStyle1 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  Widget commentBtn (Usercomment usercomment) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(usercomment.commentTime),
        const SizedBox(width: 15),
        const Text('Like'),
        const SizedBox(width: 15),
        const Text('Reply'),
      ],
    ),
  );

  Widget commentDesc(Usercomment usercomment) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(usercomment.commentorName, style: boldTextStyle,),
        const SizedBox(height: 5,),
        Row(
          children: [
            Text(usercomment.commentContent)
          ],
        )
      ],
    ),
  );

  Widget commentSpace(Usercomment usercomment) => Container(
    decoration: const BoxDecoration(
      color: Color.fromARGB(35, 158, 158, 158),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: commentDesc(usercomment),
  );

  Widget commentorPic(Usercomment usercomment) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: CircleAvatar(
      backgroundImage: AssetImage(usercomment.commentorImg),
      radius: 20,
    ),
  );

  Widget userCommentorLine(Userpost userPost, Usercomment usercomment) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      commentSpace(usercomment),
      commentBtn(usercomment),
    ],
  );

  Widget userPostDetails(Usercomment usercomment) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(height: 15),
      userCommentorLine(userpost, usercomment)
    ],
  );

  Widget commentors(Userpost userPost) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Divider(color: Colors.grey,),
      Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(userpost.numShare, style: boldTextStyle,),
        ],
      ),
      ),
      const SizedBox(height: 15,),
      Padding(padding: const EdgeInsets.symmetric(horizontal: 10), 
      child: Row(
        children: [
          Text('All comments', style: boldTextStyle,),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
      ), 
    ],
  );

  Widget buttons(Userpost userpost) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Divider(
        color: Colors.grey,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: userpost.isLiked ? Colors.grey : Colors.blue),
              onPressed: (){},
              icon: const Icon(Icons.thumb_up, size: 20,),
              label: const Text('Like'),
            ),

            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor:Colors.grey),
              onPressed: (){},
              icon: const Icon(Icons.chat_bubble, size: 20,),
              label: const Text('comment'),
            ),

            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor:Colors.grey),
              onPressed: (){},
              icon: const Icon(Icons.share, size: 20,),
              label: const Text('Share'),
            ),
          ],
        ),

      )
    ],
  );

  Widget userLine(Userpost userpost) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CircleAvatar(
          backgroundImage: AssetImage(userpost.userImg),
          radius: 20,
        ),
      ),
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(userpost.username, style: nameTextStyle,),
        const SizedBox(height: 5),
        Row(
          children: [
            Text(userpost.time),
            const Text('.'),
            const Icon(Icons.group, size: 15, color: Colors.grey),
          ],
        )
      ],
      )
    ],
  );

  Widget postImage(Userpost userpost) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(userpost.postContent),
          ],
        ),
        const SizedBox(height: 15,),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            userpost.posting,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        )
      ],

    ),

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(onPressed: (){Navigator.pop(context);},
        icon: const Icon(Icons.arrow_back, color: Colors.grey,)),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          userLine(userpost),
          postImage(userpost),
          buttons(userpost),
          commentors(userpost),
          ...userdata.commentList.map((userComment) => userPostDetails(userComment)),
        ],
      ),
    );

  }
}
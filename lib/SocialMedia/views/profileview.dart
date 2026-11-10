import 'package:activities/SocialMedia/model/usercomment.dart';
import 'package:activities/SocialMedia/model/userdata.dart';
import 'package:activities/SocialMedia/model/userpost.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key, required this.userpost});

  final Userpost userpost;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final Userdata userdata = Userdata();
  late final List<Usercomment> comments;
  final TextEditingController commentController = TextEditingController();

  var nameTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  var boldTextStyle = const TextStyle(fontWeight: FontWeight.bold);

  var boldTextStyle1 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  @override
  void initState() {
    super.initState();
    comments = List<Usercomment>.from(userdata.commentList);
  }

  @override
  void dispose() {
    commentController.dispose();
    super.dispose();
  }

  void addComment() {
    final content = commentController.text.trim();
    if (content.isEmpty) {
      return;
    }

    setState(() {
      comments.add(
        Usercomment(
          commentorImg: userdata.myUserAccount.img,
          commentorName: userdata.myUserAccount.name,
          commentTime: 'Just now',
          commentContent: content,
        ),
      );
      commentController.clear();
    });
  }

  Widget commentBtn(Usercomment usercomment) => Padding(
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
        Text(usercomment.commentorName, style: boldTextStyle),
        const SizedBox(height: 5),
        Row(children: [Text(usercomment.commentContent)]),
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

  Widget userCommentorLine(Usercomment usercomment) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [commentorPic(usercomment), commentSpace(usercomment)],
  );

  Widget userPostDetails(Usercomment usercomment) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [const SizedBox(height: 15), userCommentorLine(usercomment)],
  );

  Widget commentors(Userpost userPost) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Divider(color: Colors.grey),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [Text(userPost.numShare, style: boldTextStyle)]),
      ),
      const SizedBox(height: 15),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text('All comments', style: boldTextStyle),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    ],
  );

  Widget commentComposer() => Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(userdata.myUserAccount.img),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: commentController,
            minLines: 1,
            maxLines: 4,
            textInputAction: TextInputAction.newline,
            decoration: InputDecoration(
              hintText: 'Write a comment...',
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: addComment,
          icon: const Icon(Icons.send),
          color: Colors.blue,
          tooltip: 'Send comment',
        ),
      ],
    ),
  );

  Widget buttons(Userpost userpost) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Divider(color: Colors.grey),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: userpost.isLiked ? Colors.grey : Colors.blue,
              ),
              onPressed: () {},
              icon: const Icon(Icons.thumb_up, size: 20),
              label: const Text('Like'),
            ),

            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble, size: 20),
              label: const Text('comment'),
            ),

            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              onPressed: () {},
              icon: const Icon(Icons.share, size: 20),
              label: const Text('Share'),
            ),
          ],
        ),
      ),
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
          Text(userpost.username, style: nameTextStyle),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(userpost.time),
              const Text('.'),
              const Icon(Icons.group, size: 15, color: Colors.grey),
            ],
          ),
        ],
      ),
    ],
  );

  Widget postImage(Userpost userpost) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: [Text(userpost.postContent)]),
        const SizedBox(height: 15),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            userpost.posting,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          userLine(widget.userpost),
          postImage(widget.userpost),
          buttons(widget.userpost),
          commentors(widget.userpost),
          commentComposer(),
          ...comments.map((userComment) => userPostDetails(userComment)),
        ],
      ),
    );
  }
}

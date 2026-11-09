class Userpost {
  final String userImg;
  final String username;
  final String time;
  final String postContent;
  final String posting;
  final String numComments;
  final String numShare;
  bool isLiked;

  Userpost({
    required this.userImg,
    required this.username,
    required this.time,
    required this.postContent,
    required this.posting,
    required this.numComments,
    required this.numShare,
    required this.isLiked
  });

}
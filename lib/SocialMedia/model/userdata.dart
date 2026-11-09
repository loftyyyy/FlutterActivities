import 'package:activities/SocialMedia/model/account.dart';
import 'package:activities/SocialMedia/model/friend.dart';
import 'package:activities/SocialMedia/model/usercomment.dart';
import 'package:activities/SocialMedia/model/userpost.dart';

class Userdata {

  List<Userpost> userList = [
    Userpost(
      userImg: 'assets/person1.jpg', 
      username: 'James Doe', 
      time: '2 hrs ago', 
      postContent: 'Had a great day at the beach!', 
      posting: 'assets/beach.jpg', 
      numComments: '24', 
      numShare: '5' ,
      isLiked: false
    ),

    Userpost(
      userImg: 'assets/person2.jpg', 
      username: 'Jane Smith', 
      time: '3 hrs ago', 
      postContent: 'Loving the new cafe in town', 
      posting: 'assets/cafe.jpg', 
      numComments: '18', 
      numShare: '3', 
      isLiked: true
    ),

    Userpost(
      userImg: 'assets/person3.jpg', 
      username: 'Mike Johnson', 
      time: '5 hrs ago', 
      postContent: 'Just finished a 10k run!', 
      posting: 'assets/marathon.jpg', 
      numComments: '30', 
      numShare: '7',
      isLiked: false
    ),

    Userpost(
      userImg: 'assets/person4.jpg', 
      username: 'Johnson Stewart', 
      time: '5 hrs ago', 
      postContent: 'Just finished a 10k run!', 
      posting: 'assets/marathon.jpg', 
      numComments: '30', 
      numShare: '7', 
      isLiked: false
    ),
  ];

  List<Friend> friendList = [
    Friend(img: 'assets/person1.jpg', name: 'Alice'),
    Friend(img: 'assets/person2.jpg', name: 'Spane'),
    Friend(img: 'assets/person3pg', name: 'Cameron'),
    Friend(img: 'assets/person4.jpg', name: 'Jaunder'),
  ];

  List<Usercomment> commentList = [

    Usercomment(
      commentorImg: 'assets/person2.jpg',
      commentorName: 'Jane Smith', 
      commentTime: '1 hr ago', 
      commentContent: 'Looks fun!'
    ),

    Usercomment(
      commentorImg: 'assets/person3.jpg',
      commentorName: 'Mike Johnson', 
      commentTime: '30 mins ago', 
      commentContent: 'Wish I was there!'
    ),

    Usercomment(
      commentorImg: 'assets/person4.jpg',
      commentorName: 'Emily Davis', 
      commentTime: '15 mins ago', 
      commentContent: 'Great photo!'
    ), 
  ];

  Account myUserAccount = Account(
    name: 'Rho Alphonce E. Jornadal',
    email: 'jrhoalphonce@gmail.com',
    img: 'assets/person4.jpg', 
    numFollowers: '1 Million', 
    numPosts: '350', 
    numFollowing: '500', 
    numFriends: '400,'
    );
}

import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String errorMessage; 
  late bool isError;

  @override
  void initState(){
    errorMessage = "This is an error message";
    isError = false;
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  void checkLogin(username, password){
    setState(() {
      if(username== ""){
        errorMessage = "Please input your username!";
        isError = true;
      }else if(password == ""){
        errorMessage = "Please input your password!";
        isError = true;
      }else{
        errorMessage = "";
        isError = false;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

}

var textStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 14
);

var registerTextStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 14
);


var errorTextStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 14,
  color: Colors.red
);

var textStyle2 = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 14,
  color: Colors.white
);

// TIme stamp: 11:41
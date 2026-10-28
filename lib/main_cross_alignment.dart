import 'package:flutter/material.dart';

void main(){
  runApp(MCAlignment());
}

class MCAlignment extends StatelessWidget {
  const MCAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main Cross Alignment Task 5 Jornadal",
          style: TextStyle(color: Colors.white),
        ) ,
          backgroundColor: const Color.fromARGB(255, 42, 1, 6)
      ),
      body: Center(
        
      ),

    ),
      
    );
  }
}
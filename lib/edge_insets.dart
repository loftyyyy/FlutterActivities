import 'package:flutter/material.dart';

void main(){
  runApp(const EdgeInset());
}

class EdgeInset extends StatelessWidget {
  const EdgeInset({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Edge Insets Task 4 Jornadal",
          style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 42, 1, 6)
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(30),
                child: const Text("EdgeInsets.all(30)", style: TextStyle(fontSize: 13),),
              ),

              const SizedBox(height: 20,),
              Container(
                color: Colors.yellow,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: const Text("EdgeInsets.symmetric(horizontal: 40, vertical: 10)", style: TextStyle(fontSize: 13),),
              ),


              const SizedBox(height: 20,),
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20),
                child: const Text("EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)", style: TextStyle(fontSize: 13),),
              ),


              const SizedBox(height: 20,),
              Container(
                color: Colors.green,
                padding: const EdgeInsets.fromLTRB(10,20,30,40),
                child: const Text("EdgeInsets.all(30)", style: TextStyle(fontSize: 13),),
              )

            ],
          ),
        ),
      ),

    );
  }
}
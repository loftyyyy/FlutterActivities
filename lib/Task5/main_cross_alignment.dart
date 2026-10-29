import 'package:flutter/material.dart';

void main(){
  runApp(MCAlignment());
}

// Main Axis Alignment

// class MCAlignment extends StatelessWidget {
//   const MCAlignment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Task 5 - Jornadal",
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: const Color.fromARGB(255, 42, 1, 6),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 "MainAxisAlignment.spaceEvenly",
//                 style: TextStyle(fontSize: 13),
//               ),
//               const SizedBox(height: 8),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   containerBuilder(Colors.red),
//                   containerBuilder(Colors.yellow),
//                   containerBuilder(Colors.blue),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Cross Axis Alignment

class MCAlignment extends StatelessWidget {
  const MCAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Task 5 - Jornadal",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 42, 1, 6),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // textBaseline: TextBaseline.ideographic,
              children: [
                const Text(
                  "CrossAxisAlignment.stretch",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    containerBuilder(Colors.red),
                    containerBuilder(Colors.yellow),
                    containerBuilder(Colors.blue),
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}

Widget containerBuilder(Color color) => Container(
      height: 70,
      // width: 70,
      color: color,
    );
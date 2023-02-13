import 'package:flutter/material.dart';
import 'dart:math';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           backgroundColor: Colors.blueGrey,
//           appBar: AppBar(
//             title: const Text('Barbecue'),
//             backgroundColor: Colors.cyan,
//           ),
//           body: SafeArea(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Column(
//                       children: const [
//                         CircleAvatar(
//                           radius: 50.0,
//                           backgroundColor: Colors.white,
//                           backgroundImage: AssetImage('images/barbecue.png'),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 10.0,
//                     ),
//                     const Text(
//                       'Barbecue',
//                       style: TextStyle(
//                         fontFamily: 'Wigglye',
//                         fontSize: 40.0,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 5.0,
//                     ),
//                     const Text(
//                       'Spicy wings',
//                       style: TextStyle(
//                           fontFamily: 'KG Chasing Cars',
//                           fontSize: 20.0,
//                           letterSpacing: 2.0),
//                     ),
//                     SizedBox(
//                       height: 5.0,
//                       width: 150.0,
//                       child: Divider(
//                         color: Colors.teal.shade100,
//                       ),
//                     ),
//                     Container(
//                       width: 250.0,
//                       color: Colors.white,
//                       padding: EdgeInsets.all(8.0),
//                       margin: EdgeInsets.symmetric(
//                           vertical: 15.0, horizontal: 20.0),
//                       child: Row(
//                         children: [
//                           Container(
//                             color: Colors.white,
//                             child: Icon(
//                               Icons.call,
//                               color: Colors.teal,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 30.0,
//                           ),
//                           Container(
//                             color: Colors.white,
//                             child: Text(
//                               '+255 718 321 566',
//                               style: TextStyle(fontSize: 18.0),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 250.0,
//                       color: Colors.white,
//                       padding: EdgeInsets.all(8.0),
//                       margin:
//                           EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
//                       child: Row(
//                         children: [
//                           Container(
//                             color: Colors.white,
//                             child: Icon(
//                               Icons.email,
//                               color: Colors.teal,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 30.0,
//                           ),
//                           Container(
//                             color: Colors.white,
//                             child: Text(
//                               'barbecue@barbs.org',
//                               style:
//                                   TextStyle(fontSize: 14.0, letterSpacing: 2.0),
//                             ),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }

// Column(
// children: [
// Container(
// child: const Card(
// margin:
// EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
// color: Colors.white,
// child: ListTile(
// leading: Icon(Icons.call),
// title: Text(
// '+255 718 321 566',
// style: TextStyle(
// fontSize: 20.0,
// ),
// ),
// ),
// ),
// ),
// ],
// ),
// const SizedBox(
// height: 10.0,
// ),
// Column(
// children: [
// Container(
// child: const Card(
// margin:
// EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
// color: Colors.white,
// child: ListTile(
// leading: Icon(Icons.email),
// title: Text(
// 'barbecueshop@barbs.org',
// style: TextStyle(
// fontSize: 20.0,
// ),
// ),
// ),
// ),
// ),
// ],
// )

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 4;
  int rightDice = 2;

  void BtnChange() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              BtnChange();
            },
            child: Image.asset('images/dice$leftDice.png',
                width: 150.0, height: 150.0),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              BtnChange();
            },
            child: Image.asset('images/dice$rightDice.png',
                width: 150.0, height: 150.0),
          ))
        ],
      ),
    );
  }
}

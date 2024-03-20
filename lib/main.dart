import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trust/features/onboarding/presentations/screens/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Coin Mining',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

// class MiningPage extends StatefulWidget {
//   @override
//   _MiningPageState createState() => _MiningPageState();
// }
//
// class _MiningPageState extends State<MiningPage> {
//   double minedCoins = 0;
//   double minedValue = 0;
//   Timer? miningTimer;
//   DateTime? miningStartTime;
//   bool isMining = false;
//
//   @override
//   void dispose() {
//     miningTimer?.cancel();
//     super.dispose();
//   }
//
//   void startMining() {
//     miningStartTime = DateTime.now();
//     miningTimer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         final duration = DateTime.now().difference(miningStartTime!);
//         if (duration.inHours >= 24 || minedValue >= 0.8) {
//           stopMining();
//           return;
//         }
//         minedCoins += 0.1; // Simulating mining
//         minedValue = minedCoins * 0.05; // Assumed value of mined coins
//       });
//     });
//     setState(() {
//       isMining = true;
//     });
//   }
//
//   void stopMining() {
//     miningTimer?.cancel();
//     setState(() {
//       isMining = false;
//     });
//   }
//
//   void saveMinedCoins() {
//     setState(() {
//       minedCoins = 0;
//       minedValue = 0;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Crypto Coin Mining'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Mined Coins: ${minedCoins.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Mined Value: \$${minedValue.toStringAsFixed(2)}',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             if (isMining)
//               const Text(
//                 'Mining will stop after 24 hours or if value exceeds \$0.80',
//                 style: TextStyle(fontSize: 16, color: Colors.red),
//               ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: isMining ? stopMining : startMining,
//               child: Text(isMining ? 'Stop Mining' : 'Start Mining'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: isMining ? null : saveMinedCoins,
//               child: Text('Save Mined Coins'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Crypto Mining App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MiningScreen(),
//     );
//   }
// }
//
// class MiningScreen extends StatefulWidget {
//   @override
//   _MiningScreenState createState() => _MiningScreenState();
// }
//
// class _MiningScreenState extends State<MiningScreen> {
//   DatabaseReference _databaseReference =
//   FirebaseDatabase.instance.reference().child('mined_coins');
//   Timer? _timer;
//   bool _isMining = false;
//   double _minedCoins = 0.0;
//   double _totalValue = 0.0;
//
//   @override
//   void initState() {
//     super.initState();
//     _retrieveMinedCoins();
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
//
//   void _startMining() {
//     setState(() {
//       _isMining = true;
//     });
//     _timer = Timer(Duration(hours: 24), () {
//       _stopMining();
//     });
//   }
//
//   void _stopMining() {
//     setState(() {
//       _isMining = false;
//     });
//     _timer?.cancel();
//   }
//
//   void _retrieveMinedCoins() {
//     _databaseReference.once().then((DataSnapshot snapshot) {
//       if (snapshot.value != null) {
//         setState(() {
//           _minedCoins = double.parse(snapshot.value['mined_coins'].toString());
//           _totalValue = double.parse(snapshot.value['total_value'].toString());
//         });
//       }
//     });
//   }
//
//   void _saveMinedCoins() {
//     double newMinedCoins = _minedCoins + 0.1; // Assume mining 0.1 coin
//     double newValue = newMinedCoins * coinValue; // Calculate value in dollars
//     if (_totalValue + newValue <= 0.8) {
//       _databaseReference.set({
//         'mined_coins': newMinedCoins,
//         'total_value': _totalValue + newValue,
//       });
//       setState(() {
//         _minedCoins = newMinedCoins;
//         _totalValue += newValue;
//       });
//     } else {
//       // Show alert or message that the maximum value limit exceeded
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text("Maximum value limit exceeded"),
//             content: Text("You cannot save more coins as it exceeds the maximum value limit."),
//             actions: <Widget>[
//               FlatButton(
//                 child: Text("OK"),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Crypto Mining App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Mined Coins: $_minedCoins',
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               'Total Value: \$$_totalValue',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             _isMining
//                 ? ElevatedButton(
//               onPressed: _stopMining,
//               child: Text('Stop Mining'),
//             )
//                 : ElevatedButton(
//               onPressed: _startMining,
//               child: Text('Start Mining'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _saveMinedCoins,
//               child: Text('Save Mined Coins'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// const double coinValue = 10.0; // Value of one coin in dollars

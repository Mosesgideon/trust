import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenText extends StatefulWidget {
  const HomeScreenText({Key? key}) : super(key: key);

  @override
  State<HomeScreenText> createState() => _HomeScreenTextState();
}

class _HomeScreenTextState extends State<HomeScreenText> {
  int hours = 24;
  int minutes = 0;
  int seconds = 0;
  Timer? _timer;
  double minedCoins = 0.0;
  double totalMinedCoins = 0.0;
  bool isMining = false;

  @override
  void initState() {
    super.initState();
    loadSavedCoins(); // Load saved coins when the app starts
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startMining() {
    if (!isMining) {
      isMining = true;
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          if (hours == 0 && minutes == 0 && seconds == 0) {
            stopMining();
            return;
          }
          if (seconds == 0) {
            if (minutes == 0) {
              hours--;
              minutes = 59;
            } else {
              minutes--;
            }
            seconds = 59;
          } else {
            seconds--;
          }
          // Simulate mining process
          minedCoins += 0.000057; // Random mining rate
          if (minedCoins >= 1.3855) {
            stopMining();
          }
        });
      });
    }
  }

  void stopMining() {
    _timer?.cancel();
    isMining = false;
    totalMinedCoins += minedCoins;
    saveMinedCoins();
  }

  void loadSavedCoins() {
    // Load saved coins from storage
    // For now, let's just assume it's 0
    totalMinedCoins = 0.0;
  }

  void saveMinedCoins() {
    // Save mined coins to storage
    // For now, let's just print them
    print('Mined Coins: $minedCoins');
    print('Total Mined Coins: $totalMinedCoins');
    minedCoins = 0.0;
    hours = 24;
    minutes = 0;
    seconds = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trust Coin Mining"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text("Hour(S)"),
                    Text("$hours"),
                  ],
                ),
                Column(
                  children: [
                    const Text("Minute(S)"),
                    Text("$minutes"),
                  ],
                ),
                Column(
                  children: [
                    const Text("Second(S)"),
                    Text("$seconds"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Mined Coins: ${minedCoins.toStringAsFixed(6)}",
            ),
            Text(
              "Total Mined Coins: ${totalMinedCoins.toStringAsFixed(6)}",
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: startMining,
              child: const Text("Start Mining"),
            ),
          ],
        ),
      ),
    );
  }
}
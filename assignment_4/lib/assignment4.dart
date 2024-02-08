import 'package:flutter/material.dart';

class assignment4 extends StatefulWidget {
  const assignment4({super.key});

  @override
  State<assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<assignment4> {
  int count = 0;
  void countPalindrome() {
    count = 0;
    List<int> numberlist = [1, 225, -777, 121, 111, 234, 999];
    for (int i = 0; i < numberlist.length; i++) {
      int temp = numberlist[i].abs();
      int reverseNum = 0;
      while (temp != 0) {
        reverseNum = reverseNum * 10 + temp % 10;
        temp = temp ~/ 10;
      }
      if (reverseNum == numberlist[i].abs()) {
        count++;
      }
    }
  }

  int count1 = 0;
  void countArmStrong() {
    count1 = 0;
    int sum = 0;
    List<int> numberlist = [1, 225, -777, 121, 111, 234, 999];
    for (int i = 0; i < numberlist.length; i++) {
      int N = numberlist[i].abs();
      int temp = N;
      while (N != 0) {
        int rem = N % 10;
        sum = sum + (rem * rem * rem);
        N = N ~/ 10;
      }
      if (temp == sum) {
        count1++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ASSIGNMENT4",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    countPalindrome();
                    setState(() {});
                  },
                  child: const Text("Check Palindrome"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("$count Numbers are Palindrome")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    countArmStrong();
                    setState(() {});
                  },
                  child: const Text("Check ArmStrong"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("$count1 Numbers are ArmStrong")
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Assign22 extends StatefulWidget {
  const Assign22({super.key});

  @override
  State createState() => _Assign22State();
}

class _Assign22State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign22"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR9gHxWXNMUr3lMJr4W8rWpVh6vwyjriJ6bQ&usqp=CAU"),
            ),
            const SizedBox(height: 5),
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                  "https://filmfare.wwmindia.com/content/2021/jun/action-bollywood-movies-tanhaji-1624948733.jpg"),
            ),
            const SizedBox(height: 5),
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                "https://images.lifestyleasia.com/wp-content/uploads/sites/7/2021/11/23171804/243790350_4438147812927955_1754826358579203828_n.webp_.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

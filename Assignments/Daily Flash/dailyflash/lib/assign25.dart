import 'package:flutter/material.dart';

class Assign25 extends StatefulWidget {
  const Assign25({super.key});

  @override
  State createState() => _Assign25State();
}

class _Assign25State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign25"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.network(
              'https://www.netmeds.com/images/cms/wysiwyg/blog/2020/03/1583390811_TigerShroff_big_600.jpg',
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 5),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}

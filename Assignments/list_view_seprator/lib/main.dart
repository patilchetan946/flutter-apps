import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State createState() {
    return _ListViewDemo();
  }
}

class _ListViewDemo extends State {
  List<Map> imglist = [
    {
      "title": "OneDay",
      "cricker": [
        "https://www.kreedon.com/wp-content/uploads/2019/04/17kohli1-324x235.jpg.webp",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKBxjQH2M8CVcXE1FT7Fh3PPt3UKsNyViO8pqt7ITG87FOaJjJbV64yQy_Be-DX3jh-no&usqp=CAU",
        "https://resize.indiatvnews.com/en/resize/newbucket/1080_-/2023/09/untitled-design-2023-09-13t155603-1694600852.jpg",
      ]
    },
    {
      "title": "T20",
      "cricker": [
        "https://www.kreedon.com/wp-content/uploads/2019/04/17kohli1-324x235.jpg.webp",
        "https://www.royalchallengers.com/PRRCB01/public/styles/1061x767_landscape/public/2023-07/7xm.xyz218513.jpg?itok=KyM7P-4z",
        "https://images.thequint.com/thequint%2F2023-05%2F042f3ee6-361e-470b-bb14-0467e48604c2%2FRON_1195.JPG",
      ]
    },
    {
      "title": "Test",
      "cricker": [
        "https://www.kreedon.com/wp-content/uploads/2019/04/17kohli1-324x235.jpg.webp",
        "https://images.immediate.co.uk/production/volatile/sites/3/2023/02/Best-cricket-players-world-4121e33.jpg?quality=90&resize=980,654",
        "https://images.thequint.com/thequint%2F2023-05%2F042f3ee6-361e-470b-bb14-0467e48604c2%2FRON_1195.JPG",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List ViewSeparatedDemo"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
          itemCount: imglist.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Text(imglist[index]["title"]),
                for (int i = 0; i < imglist.length; i++)
                  Container(
                    child: Image.network(
                      imglist[index]["cricker"][i],
                      height: 200,
                      width: 200,
                    ),
                  ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Center(
              child: const Text(
                  "------------------------------------------------"),
            );
          },
        ));
  }
}

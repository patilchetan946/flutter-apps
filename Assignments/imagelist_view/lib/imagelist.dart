import 'package:flutter/material.dart';

class ImageList extends StatefulWidget {
  const ImageList({super.key});

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  List<String> imagelist = [
    "https://media.istockphoto.com/id/917911572/photo/standing-woman-on-the-hill-against-mountain-valley-at-bright-sunny-day-landscape-with-girl.jpg?s=2048x2048&w=is&k=20&c=cM_JXt2TA5RkUwemBr30OYs_v_Wz2KaQD-Lze6Koz88=",
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_1280.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Listview"),
      ),
      body: ListView.builder(
        itemCount: imagelist.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(
              imagelist[index],
            ),
          );
        },
      ),
    ));
  }
}

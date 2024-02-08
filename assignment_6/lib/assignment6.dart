import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget {
  const Assignment6({super.key});

  @override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "NETFLIX",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "MOVIES",
              style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 350,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.network(
                    "https://m.media-amazon.com/images/M/MV5BNTgwMjQ1OWEtZDZhZS00YTM1LTg4NWUtMTdjZmE0MzQ0MTlmXkEyXkFqcGdeQXVyMTQ3Mzk2MDg4._V1_.jpg",
                    height: 350,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.network(
                    "https://akamaividz2.zee5.com/image/upload/w_224,h_336,c_scale,f_webp,q_auto:eco/resources/0-0-1z5473008/portrait/1920x770552eecbab28d45a8a51e5f24cdd75ecd.jpg",
                    height: 350,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.network(
                    "https://m.media-amazon.com/images/M/MV5BNThkNDNjMDQtN2ZlOC00MGIwLWE3MGMtOWI0NTVhNDczN2I1XkEyXkFqcGdeQXVyMTYyNDExNjA4._V1_.jpg",
                    height: 350,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "WEB SERIES",
              style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    "https://m.media-amazon.com/images/M/MV5BY2M0ODNiODctOTkzZS00OGU3LTlkYjktOGE0ZmU2ZDQ4ZmM4XkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg",
                    height: 200,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                    height: 200,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    height: 200,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "POPULAR SHOWS",
              style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                    height: 200,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                    height: 200,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                    height: 200,
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

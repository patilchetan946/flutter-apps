import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  //bool _isPost3Liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.orange,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost1Liked = !_isPost1Liked;
                        });
                      },
                      icon: _isPost1Liked
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                            )),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  ),
                  // const SizedBox(
                  //   width: 210,
                  // ),     To move the bookmark icon to rightside using hardcoded size
                  const Spacer(), //Automatically makes the spaces and fit the icon at last
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.orange,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2016/11/14/04/36/boy-1822614_640.jpg",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost2Liked = !_isPost2Liked;
                      });
                    },
                    icon: Icon(
                        _isPost2Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost2Liked ? Colors.red : Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  ),
                  // const SizedBox(
                  //   width: 210,
                  // ),   To move the bookmark icon to rightside using hardcoded size
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.orange,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928_640.jpg",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  ),
                  // const SizedBox(
                  //   width: 210,
                  // ),    To move the bookmark icon to rightside using hardcoded size
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),

      //  body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Container(
      //             color: Colors.orange,
      //             child: Image.network(
      //               "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
      //               width: double.infinity,
      //             ),
      //           ),
      //           Row(
      //             children: [
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.favorite_outline_outlined,
      //                 ),
      //               ),
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.comment_outlined,
      //                 ),
      //               ),
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(Icons.send),
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Container(
      //             color: Colors.orange,
      //             child: Image.network(
      //               "https://cdn.pixabay.com/photo/2016/11/14/04/36/boy-1822614_640.jpg",
      //               width: double.infinity,
      //             ),
      //           ),
      //           Row(
      //             children: [
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.favorite_outline_outlined,
      //                 ),
      //               ),
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.comment_outlined,
      //                 ),
      //               ),
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(Icons.send),
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Container(
      //             color: Colors.orange,
      //             child: Image.network(
      //               "https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928_640.jpg",
      //               width: double.infinity,
      //             ),
      //           ),
      //           Row(
      //             children: [
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.favorite_outline_outlined,
      //                 ),
      //               ),
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.comment_outlined,
      //                 ),
      //               ),
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(Icons.send),
      //               ),
      //             ],
      //           )
      //         ],
      //       )
      //     ],
      //   ),
    );
  }
}

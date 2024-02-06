import "package:flutter/material.dart";

class Assignment8 extends StatefulWidget {
  const Assignment8({super.key});

  @override
  State<Assignment8> createState() => _Assignment8State();
}

class _Assignment8State extends State<Assignment8> {
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  bool _isPost3Liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontFamily: "Proxima Nova",
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.chat_bubble_outline,
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 50,
                        )),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.circle_outlined,
                        size: 50,
                      )),
                  const Text("rvcjinsta"),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                      )),
                ],
              ),
              Container(
                child: Image.network(
                  "https://images.pexels.com/photos/2378278/pexels-photo-2378278.jpeg?cs=srgb&dl=pexels-shafifotumcatcher-2378278.jpg&fm=jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
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
                      color: _isPost2Liked ? Colors.red : Colors.black,
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
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outline_outlined,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.circle_outlined,
                        size: 50,
                      )),
                  const Text("rvcjinsta"),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                      )),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1503614472-8c93d56e92ce?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
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
                    icon: Icon(
                      _isPost1Liked
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_outlined,
                      color: _isPost1Liked ? Colors.red : Colors.black,
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
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outline_outlined,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.circle_outlined,
                        size: 50,
                      )),
                  const Text("rvcjinsta"),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                      )),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://cdn.vcgamers.com/news/wp-content/uploads/2023/02/tips-senjata-item-pubg-mobile-1.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost3Liked = !_isPost3Liked;
                      });
                    },
                    icon: Icon(
                      _isPost3Liked
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_outlined,
                      color: _isPost3Liked ? Colors.red : Colors.black,
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
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outline_outlined,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: ""),
          
        ],
      ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Container(
      //             color: Colors.amber,
      //             child: Image.network(
      //               "data:image/jpeg;base64,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",
      //               width: double.infinity,
      //               height: 200,
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
      //                 icon: const Icon(
      //                   Icons.send,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Container(
      //             color: Colors.amber,
      //             child: Image.network(
      //               "data:image/jpeg;base64,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",
      //               width: double.infinity,
      //               height: 200,
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
      //                 icon: const Icon(
      //                   Icons.send,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Container(
      //             color: Colors.amber,
      //             child: Image.network(
      //               "data:image/jpeg;base64,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",
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
      //                 icon: const Icon(
      //                   Icons.send,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

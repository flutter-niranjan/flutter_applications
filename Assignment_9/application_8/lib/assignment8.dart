import "package:flutter/material.dart";

class Assignment8 extends StatefulWidget {
  const Assignment8({super.key});

  @override
  State<Assignment8> createState() => _Assignment8State();
}

class _Assignment8State extends State<Assignment8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("NETFLIX"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "MOVIES",
                      style: TextStyle(fontSize: 18,),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 350,
                        width: 250,
                        child: Image.network(
                            "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 350,
                        width: 250,
                        child: Image.network(
                            "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 350,
                        width: 250,
                        child: Image.network(
                            "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "WEB SERIES",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 250,
                        width: 200,
                        child: Image.network(
                            "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",fit: BoxFit.cover,),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 250,
                        width: 200,
                        child: Image.network(
                            "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 250,
                        width: 200,
                        child: Image.network(
                            "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "MOST POPULAR",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 250,
                        width: 200,
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 250,
                        width: 200,
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",fit: BoxFit.cover,),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 250,
                        width: 200,
                        child: Image.network(
                            "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",fit: BoxFit.cover,),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

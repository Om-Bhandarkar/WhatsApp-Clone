import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});
  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  final List<String> name = [
    "Om Bhandarkar",
    "Namrata Chaudhari",
    "Tanmayi Chavan",
    "Nishant Chavan",
    "Jagannath Suryavanshi",
    "Ajay Nikumbh",
    "Mohit Badgujar",
    "Pratik Donajmath",
    "Sahil Bhandekar",
    "Mayur Patil",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Calls",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            // color: Colors.green,
          ),
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.qr_code_scanner),
            tooltip: "Scanner",
          ),
          SizedBox(width: 15.0),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: "Search",
          ),
          SizedBox(width: 15.0),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert),
            tooltip: "More Option",
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
            child: Text(
              "Favorites",
              style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 30, 177, 1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.favorite, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Text(
                "Add Favoourite",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.0, top: 20.0),
            child: Text(
              "Recent",
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 20.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/profile.png",
                          ),
                          radius: 25.0,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name[index],
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text("Incomming"),
                            ],
                          ),
                        ),
                        Icon(Icons.video_camera_front),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 30, 177, 1),
        foregroundColor: Colors.white,
        child: Icon(Icons.call),
      ),
    );
  }
}

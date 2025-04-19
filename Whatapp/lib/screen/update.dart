import 'package:flutter/material.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});
  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  List<String> channel = [
    "Jagannath Sakharam Suryawanshi",
    "Craving",
    "Flutter Developement",
    "The Latest OFFCampus",
    "The Job",
    "Python",
    "Dart & Flutter",
    "Indian Cricket Team",
    "Chennai Super Kings",
    "Learn English",
    "ABP News",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Updates",
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
            icon: Icon(Icons.camera_alt_outlined),
            tooltip: "Camera",
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
              "Status",
              style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14, top: 10),
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    margin: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(50, 158, 158, 158),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 14, top: 10, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Channels",
                  style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(iconAlignment: IconAlignment.end),
                  onPressed: null,
                  label: Text(
                    "Explore",
                    style: TextStyle(fontSize: 15.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: channel.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/profile.png",
                        ),
                        radius: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              channel[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text("Follow Channel"),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: null,
            backgroundColor: const Color.fromARGB(255, 30, 177, 1),
            foregroundColor: Colors.white,
            child: Icon(Icons.edit),
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            onPressed: null,
            backgroundColor: const Color.fromARGB(255, 30, 177, 1),
            foregroundColor: Colors.white,
            child: Icon(Icons.camera_alt_outlined),
          ),
        ],
      ),
    );
  }
}

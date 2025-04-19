import 'package:flutter/material.dart';
import 'package:textfield/screen/call.dart';
import 'package:textfield/screen/community.dart';
import 'package:textfield/screen/contact_list.dart';
import 'package:textfield/screen/update.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int myIndex = 0;

  final List<Widget> screens = [
    ChatScreen(),
    UpdatePage(),
    CommunityPage(),
    CallPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Update"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Community"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
        ],
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
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

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 30, 177, 1),
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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Ask Meta AI or Search",
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                _buildCategoryChip("All", Colors.lightGreen[300]!),
                _buildCategoryChip("Favourite"),
                _buildCategoryChip("Friends"),
                _buildCategoryChip("+"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 80,
                    child: Row(
                      children: [
                        const CircleAvatar(
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
                                name[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text("New user"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 30, 177, 1),
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=> ContactListPage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildCategoryChip(String text, [Color? bgColor]) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: text == "+" ? 50.0 : 90.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: bgColor ?? Colors.grey[200],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

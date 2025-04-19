import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});
  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Contact",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
            Text(
              "${name.length} contacts",
              style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: const [
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.group_add, color: Colors.white),
                ),
                SizedBox(width: 20),
                Text(
                  "New group",
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.person_add_alt, color: Colors.white),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    "New contact",
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(Icons.qr_code),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.groups, color: Colors.white),
                ),
                SizedBox(width: 20),
                Text(
                  "New community",
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "Contact on WhatsApp",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 80,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/profile.png",
                          ),
                          radius: 25,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text("User"),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

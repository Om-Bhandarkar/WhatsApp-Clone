import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});
  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Communities",
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
    );
  }
}

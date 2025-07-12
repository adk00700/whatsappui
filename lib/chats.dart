import 'package:flutter/material.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera),
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
        title: Text("WhatsApp"),
        centerTitle: true,actions: [Icon(Icons.qr_code_scanner),
        SizedBox(width: 30,),
        Icon(Icons.camera_alt),
        SizedBox(width: 20,),
        Icon(Icons.more_vert)],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.search_rounded),
                fillColor: Colors.grey.shade300,
                labelText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                )
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1434185514/vector/portrait-of-man-listening-to-music-with-headphones.jpg?s=612x612&w=0&k=20&c=rs8qvtghFOCYmktQKZd1ApcfUuf7KMz8B7qIff1HNKs=",
              ),
            ),title: Text("Ajith"), subtitle: Text("hyy"), trailing: Text("4:20am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1434185514/vector/portrait-of-man-listening-to-music-with-headphones.jpg?s=612x612&w=0&k=20&c=rs8qvtghFOCYmktQKZd1ApcfUuf7KMz8B7qIff1HNKs=",
              ),
            ),title: Text("Adi"), subtitle: Text("heloooo"), trailing: Text("11.11pm"),
          ),
        ],
      ),

    );
  }
}

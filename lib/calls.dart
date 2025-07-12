import 'package:flutter/material.dart';

class calls extends StatelessWidget {
  const calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
        title: Text("Calls"),
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
          Text("Favourites"),
          ListTile(leading: Icon(Icons.add_circle), title: Text("Add Favourites")),
          Text("Recent"),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1434185514/vector/portrait-of-man-listening-to-music-with-headphones.jpg?s=612x612&w=0&k=20&c=rs8qvtghFOCYmktQKZd1ApcfUuf7KMz8B7qIff1HNKs=",
              ),
            ), title: Text("Ajith"), subtitle: Text("Yesterday,11:11pm"),trailing: Icon(Icons.call_outlined),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1434185514/vector/portrait-of-man-listening-to-music-with-headphones.jpg?s=612x612&w=0&k=20&c=rs8qvtghFOCYmktQKZd1ApcfUuf7KMz8B7qIff1HNKs=",
              ),
            ), title: Text("Adi"), subtitle: Text("Yesterday,4.20pm"),trailing: Icon(Icons.call_outlined),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsappui/calls.dart';
import 'package:whatsappui/chats.dart';
import 'package:whatsappui/community.dart';
import 'package:whatsappui/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  List<Widget>pages=[chats(),updates(),community(),calls()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.chat),
      foregroundColor: Colors.white , backgroundColor: Colors.grey.shade900,),
      bottomNavigationBar:
      BottomNavigationBar(currentIndex: index,onTap: (value) {
        setState(() {
          index=value;
        });
      },
          selectedItemColor: Colors.grey.shade900,unselectedItemColor: Colors.grey.shade600,showUnselectedLabels: true,
      items:[
      BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
      BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: "Community" ),
      BottomNavigationBarItem(icon: Icon(Icons.call_outlined), label: "Calls")]
    ),body: pages[index],
    );
  }
}

import 'package:flutter/material.dart';

import 'friends.dart';
import 'marketplace.dart';
import 'newsfeed.dart';
import 'notification.dart';
import 'profile.dart';
import 'reels.dart';

class CustomMain extends StatefulWidget {
  const CustomMain({super.key});

  @override
  State<CustomMain> createState() => _CustomMainState();
}

class _CustomMainState extends State<CustomMain> {
  int currentPage= 0;

   List page =[
    const NewsFeed(),
    const ReelsPage(),
    const FriendsPage(),
    const MarkitPlacePage(),
    const ProfilePage(),
    const NotificationPage(),
   ];

   void onTapped(int index) {
    setState(() {
      currentPage = index;
   }); 
   }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: page[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        items: const [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "Reels"),
         BottomNavigationBarItem(icon: Icon(Icons.person), label: "Friends"),
         BottomNavigationBarItem(icon: Icon(Icons.local_convenience_store), label: "Marketplace"),
         BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
         BottomNavigationBarItem(icon: CircleAvatar(
          backgroundImage: AssetImage("assets/profile/profile1.jpg"),
          ), label: "Profile"),
        ]
      )
    );
  
  }
}
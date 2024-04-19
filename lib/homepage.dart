import 'package:flutter/material.dart';
import 'package:tiktok_ui/main.dart';
import 'package:tiktok_ui/pages/home.dart';
import 'package:tiktok_ui/pages/inbox.dart';
import 'package:tiktok_ui/pages/plus.dart';
import 'package:tiktok_ui/pages/profile.dart';
import 'package:tiktok_ui/pages/search.dart';

void main() {
  runApp(const MyApp());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MainAppState();
}

class _MainAppState extends State<HomePage> {
  // bottom new bar
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    UserSearchPage(),
    UserPlusPage(),
    UserInbox(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Hello'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profile'),
        ],
      ),
    );
  }
}

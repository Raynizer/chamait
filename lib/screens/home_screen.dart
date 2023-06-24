import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'home/home_tab.dart';
import 'home/wallet_tab.dart';
import 'home/my_group_tab.dart';
import 'home/reports_tab.dart';
import 'home/profile_tab.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomeTab(),
    WalletTab(),
    MyGroupTab(),
    ReportsTab(),
    ProfileTab(), // Pass the userId to the ProfileTab
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chama Wallet',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: PopupMenuButton(
          icon: Icon(
            Iconsax.menu5,
            color: Colors.blueAccent,
          ),
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text('Smart Contracts'),
              ),
              PopupMenuItem(
                child: Text('Blockchain Interopability'),
              ),
              PopupMenuItem(
                child: Text('NFT´s'),
              ),
              PopupMenuItem(
                child: Text('Coins'),
              ),
              PopupMenuItem(
                child: Text('Chama DeFi'),
              ),
              PopupMenuItem(
                child: Text('Tokenization of Assets'),
              ),
              PopupMenuItem(
                child: Text('Hustler Fund'),
              ),
              PopupMenuItem(
                child: Text('Privacy and Security'),
              ),
            ];
          },
          onSelected: (value) {
            // Handle popup menu item selection
            print('Selected: $value');
          },
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: IconButton(
              icon: Icon(
                Iconsax.notification,
                color: Colors.blue,
              ),
              onPressed: () {
                // Handle notification icon tap
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: IconButton(
              icon: Icon(
                Iconsax.setting,
                color: Colors.blue,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.people),
            label: 'My Group',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.receipt),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
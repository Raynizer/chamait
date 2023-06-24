import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General Settings',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  SettingItem(
                    icon: Iconsax.money,
                    title: 'Transactions',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.money_add,
                    title: 'Loans',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.money_time,
                    title: 'Payments',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.building,
                    title: 'Biashara',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.wallet_add,
                    title: 'Investment',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.coin,
                    title: 'My Savings',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.call,
                    title: 'Contacts',
                    iconColor: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Account Settings',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  SettingItem(
                    icon: Iconsax.user_add,
                    title: 'My Referrals',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.lock,
                    title: 'Privacy and Data',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.message_question,
                    title: 'Help and Support',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.shield,
                    title: 'Terms and Conditions',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.lovely,
                    title: 'Creator Support',
                    iconColor: Colors.blue,
                  ),
                  SettingItem(
                    icon: Iconsax.message,
                    title: 'Feedback',
                    iconColor: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '© Raynizer Developers, Embu',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'App Version 1.0.0',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;

  const SettingItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(title),
    );
  }
}

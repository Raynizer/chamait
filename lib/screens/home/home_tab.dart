import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool hideBalance = true;
  bool isRefreshing = false;

  void toggleHideBalance() {
    setState(() {
      hideBalance = !hideBalance;
    });
  }

  void refreshBalance() {
    setState(() {
      isRefreshing = true;
    });

    // Simulating a delay for 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isRefreshing = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Manuel KE 👋',
              style: GoogleFonts.lato(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Welcome back!',
              style: GoogleFonts.lato(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Account Balance',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          hideBalance ? Iconsax.eye_slash : Iconsax.eye,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          toggleHideBalance();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        hideBalance ? '****' : 'KES 50,000',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: isRefreshing
                            ? CircularProgressIndicator(
                          color: Colors.white,
                        )
                            : Icon(
                          Iconsax.refresh_circle,
                          color: Colors.white,
                        ),
                        onPressed: isRefreshing ? null : () {
                          refreshBalance();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    width: double.infinity,
                    height: 8.0,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    // Apply animation to the progress bar
                    // Example: AnimatedProgressBar(),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'main wallet',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        'chama',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Meeting',
                        style: GoogleFonts.lato(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Iconsax.close_circle,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Handle close upcoming meeting
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Time: 2:00 PM',
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Venue: Conference Room',
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Date: June 30, 2023',
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildSection(
                    Iconsax.trend_up,
                    'News',
                    isActive: true,
                  ),
                  _buildSection(
                    Iconsax.calendar_2,
                    'Meetings',
                    isActive: false,
                  ),
                  _buildSection(
                    Iconsax.activity,
                    'Projects',
                    isActive: false,
                  ),
                  _buildSection(
                    Iconsax.money_add,
                    'Harambees',
                    isActive: false,
                  ),
                  _buildSection(
                    Iconsax.building,
                    'Biashara',
                    isActive: false,
                  ),
                  _buildSection(
                    Iconsax.graph,
                    'Trading',
                    isActive: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(IconData icon, String label, {bool isActive = false}) {
    final Color activeColor = Colors.blue;
    final Color inactiveColor = Colors.grey;

    return GestureDetector(
      onTap: () {
        // Handle section tap
      },
      child: Container(
        margin: EdgeInsets.only(right: 16.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: isActive ? activeColor : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: isActive ? activeColor : inactiveColor,
            width: 1.0,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isActive ? Colors.white : inactiveColor,
            ),
            SizedBox(width: 8.0),
            Text(
              label,
              style: GoogleFonts.lato(
                color: isActive ? Colors.white : inactiveColor,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

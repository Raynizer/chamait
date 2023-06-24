import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'User Details',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Iconsax.user,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Manuel KE',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 2.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Iconsax.tick_circle,
                            color: Colors.white,
                            size: 12.0,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            'Verified',
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[200],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailRow(Iconsax.user, 'Full Name', 'Manuel KE'),
                  SizedBox(height: 8.0),
                  _buildDetailRow(Iconsax.card, 'ID Number', '12345678'),
                  SizedBox(height: 8.0),
                  _buildDetailRow(Iconsax.message, 'Email', 'manuel@example.com'),
                  SizedBox(height: 8.0),
                  _buildDetailRow(Iconsax.call, 'Phone Number', '+254704496565'),
                  SizedBox(height: 8.0),
                  _buildDetailRow(Iconsax.profile_tick, 'Gender', 'Male'),
                  SizedBox(height: 8.0),
                  _buildDetailRow(Iconsax.location, 'Location', 'Bomet, Kenya'),
                  SizedBox(height: 8.0),
                  _buildDetailRow(Iconsax.people, 'Chama Name', 'Tulwabei'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Handle sign out
                },
                icon: Icon(
                  Iconsax.logout,
                  size: 16.0,
                ),
                label: Text('Sign Out'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Join Community',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  // Handle Twitter button
                },
                icon: Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle Telegram button
                },
                icon: Icon(
                  FontAwesomeIcons.telegram,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle Facebook button
                },
                icon: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle Reddit button
                },
                icon: Icon(
                  FontAwesomeIcons.reddit,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle YouTube button
                },
                icon: Icon(
                  FontAwesomeIcons.youtube,
                  color: Colors.red,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle WhatsApp button
                },
                icon: Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 20.0, color: Colors.blue),
        SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              value,
              style: GoogleFonts.openSans(fontSize: 12.0),
            ),
          ],
        ),
      ],
    );
  }
}
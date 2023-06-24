import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class MyGroupTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'My Group',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildGroupMembers(),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Suggestions/Messages',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildSuggestions(),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Add People to Group',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildAddPeople(),
          ],
        ),
      ),
    );
  }

  Widget _buildGroupMembers() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Group Members',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildMemberCard('John Korir', Iconsax.user),
                _buildMemberCard('Jany Sang', Iconsax.user),
                _buildMemberCard('David Rono', Iconsax.user),
                _buildMemberCard('Manuel KE', Iconsax.user),
                _buildMemberCard('Mike Tonui', Iconsax.user),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMemberCard(String name, IconData icon) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestions() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _buildSuggestionCard('I think we should organize a charity event.'),
          _buildSuggestionCard('Let\'s have a group meeting next week.'),
          _buildSuggestionCard('We need to update the group rules.'),
          _buildSuggestionCard('I suggest we create a group budget.'),
        ],
      ),
    );
  }

  Widget _buildSuggestionCard(String suggestion) {
    return ListTile(
      leading: Icon(Iconsax.message, color: Colors.blue),
      title: Text(
        suggestion,
        style: GoogleFonts.poppins(fontSize: 16),
      ),
      onTap: () {
        // Handle suggestion/message onTap
      },
    );
  }

  Widget _buildAddPeople() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Iconsax.add, color: Colors.blue),
            title: Text(
              'Add new member',
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            onTap: () {
              // Handle add new member onTap
            },
          ),
          ListTile(
            leading: Icon(Iconsax.message_add, color: Colors.blue),
            title: Text(
              'Invite via message',
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            onTap: () {
              // Handle invite via message onTap
            },
          ),
        ],
      ),
    );
  }
}

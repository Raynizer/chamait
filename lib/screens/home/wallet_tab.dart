import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class WalletTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildActionItem(Iconsax.arrow_circle_up, 'Send', Color(0xFF4F86F7)),
              _buildActionItem(Iconsax.arrow_circle_down, 'Receive', Color(
                  0xFF4F86F7)),
              _buildActionItem(Iconsax.add_circle, 'Add', Color(0xFF4F86F7)),
              _buildActionItem(Iconsax.scan_barcode, 'Scan', Color(0xFF4F86F7)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Transactions',
            style: GoogleFonts.poppins(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5, // Replace with actual transaction count
            itemBuilder: (context, index) {
              // Replace with your transaction data
              return ListTile(
                leading: Icon(Iconsax.money_time),
                title: Text('Transaction $index'),
                subtitle: Text('Amount: \ksh 100'),
                trailing: Icon(Iconsax.arrow_right_2),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextButton(
            onPressed: () {
              // Handle "See All" button tap
            },
            child: Text(
              'See All',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionItem(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 32.0,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

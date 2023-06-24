import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ReportsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(label: 'Jan', value: 200, isRise: true),
      ChartData(label: 'Feb', value: 300, isRise: false),
      ChartData(label: 'March', value: 400, isRise: true),
      ChartData(label: 'April', value: 500, isRise: true),
      ChartData(label: 'May', value: 600, isRise: false),
      ChartData(label: 'June', value: 700, isRise: true),
      ChartData(label: 'July', value: 800, isRise: false),
    ];

    final List<charts.Series<ChartData, String>> seriesList = [
      charts.Series<ChartData, String>(
        id: 'Progress',
        domainFn: (ChartData data, _) => data.label,
        measureFn: (ChartData data, _) => data.value,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        data: chartData,
      ),
      charts.Series<ChartData, String>(
        id: 'Rise',
        domainFn: (ChartData data, _) => data.label,
        measureFn: (ChartData data, _) => data.isRise ? data.value : null,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        dashPatternFn: (_, __) => [2, 2],
        strokeWidthPxFn: (_, __) => 1,
        data: chartData,
      ),
      charts.Series<ChartData, String>(
        id: 'Fall',
        domainFn: (ChartData data, _) => data.label,
        measureFn: (ChartData data, _) => !data.isRise ? data.value : null,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        dashPatternFn: (_, __) => [2, 2],
        strokeWidthPxFn: (_, __) => 1,
        data: chartData,
      ),
    ];

    final progressChart = charts.BarChart(
      seriesList,
      animate: true,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Progress',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              height: 300,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: progressChart,
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Inspect',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InspectMenuItem(label: 'Daily', isActive: true),
                InspectMenuItem(label: 'Weekly', isActive: false),
                InspectMenuItem(label: 'Monthly', isActive: false),
                InspectMenuItem(label: 'Yearly', isActive: false),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Menu',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                MenuItem(
                  label: 'Sales',
                  icon: Iconsax.shopping_bag,
                  isActive: true,
                ),
                MenuItem(
                  label: 'Expenses',
                  icon: Iconsax.money_add,
                  isActive: false,
                ),
                MenuItem(
                  label: 'Analytics',
                  icon: Iconsax.chart,
                  isActive: false,
                ),
                MenuItem(
                  label: 'Inventory',
                  icon: Iconsax.box,
                  isActive: false,
                ),
                MenuItem(
                  label: 'Customers',
                  icon: Iconsax.people,
                  isActive: false,
                ),
                MenuItem(
                  label: 'More',
                  icon: Iconsax.menu,
                  isActive: false,
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class ChartData {
  final String label;
  final int value;
  final bool isRise;

  ChartData({required this.label, required this.value, required this.isRise});
}

// Rest of the code remains the same...
class InspectMenuItem extends StatelessWidget {
  final String label;
  final bool isActive;

  const InspectMenuItem({required this.label, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isActive;

  const MenuItem({
    required this.label,
    required this.icon,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 28,
            color: isActive ? Colors.white : Colors.black,
          ),
          SizedBox(width: 12),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


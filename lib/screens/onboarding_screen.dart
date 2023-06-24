import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<IconData> _sliderIcons = [
    Iconsax.bank,
    Iconsax.money_tick,
    Iconsax.lock_circle,
  ];
  int _currentIndex = 0;

  final List<String> _slideTitles = [
    'Save, Invest & Grow',
    'Manage Your Finances',
    'Secure Transactions',
  ];

  final List<String> _slideDescriptions = [
    'Save, invest, and watch your wealth grow with Chama Wallet. Take charge of your financial future by effortlessly saving, smartly investing, and witnessing the growth of your hard-earned money.',
    'Empower your financial journey with Chama Wallet. Easily manage money, track expenses, set goals, and build a brighter financial future. Take control and get started now!',
    'Experience secure transactions with peace of mind. Chama Wallet ensures the utmost security in your financial transactions, safeguarding your sensitive information and protecting your financial data. Trust us for safe and worry-free transactions',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade900,
          ),
          _buildBackgroundCircles(),
          Column(
            children: [
              Expanded(
                child: CarouselSlider(
                  items: _buildSlides(),
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, _) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              _buildSlideIndicators(),
              SizedBox(height: 16.0),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
                icon: Icon(Iconsax.arrow_right),
                label: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(fontSize: 16.0),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
                ),
              ),
              SizedBox(height: 32.0),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSlides() {
    return _sliderIcons.map((icon) {
      return Container(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 80.0,
                color: Colors.white,
              ),
              SizedBox(height: 32.0),
              Text(
                _slideTitles[_sliderIcons.indexOf(icon)],
                style: GoogleFonts.poppins(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                _slideDescriptions[_sliderIcons.indexOf(icon)],
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  Widget _buildBackgroundCircles() {
    return Positioned.fill(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;
          return Stack(
            children: [
              ...List.generate(
                20,
                    (index) {
                  final xPos = (index % 4) * (screenWidth / 4);
                  final yPos = (index ~/ 4) * (screenHeight / 10);
                  final size = (index % 3) * 15.0 + 15.0;
                  return Positioned(
                    top: yPos,
                    left: xPos,
                    child: Container(
                      width: size,
                      height: size,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(0.4),
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSlideIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _sliderIcons.length,
            (index) {
          return Container(
            width: 10.0,
            height: 10.0,
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentIndex == index ? Colors.white : Colors.grey,
            ),
          );
        },
      ),
    );
  }
}

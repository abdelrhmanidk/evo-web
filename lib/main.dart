import 'package:evo/roadmabs/flutter.dart';
import 'package:evo/roadmap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          return Stack(
            children: [
              PageView(
                
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  buildPage(isMobile, 'images/background.png', 'images/mobile_background1.png'),
                  buildPage(isMobile, 'images/background2.png', 'images/mobile_background2.png'),
                  buildPage(isMobile, 'images/background3.png', 'images/mobile_background3.png'),
                ],
              ),
              Positioned(
                top: isMobile ? 150 : 270,
                right: isMobile
                    ? null
                    : _currentPage == 1
                        ? 210
                        : _currentPage == 0
                            ? 130
                            : 165,
                left: isMobile ? 50 : null,
                child: Text(
                  _currentPage == 1
                      ? 'Flutter'
                      : _currentPage == 0
                          ? 'Data Science'
                          : 'Marketing',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isMobile ? 35 : 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: isMobile ? 20 : 35,
                top: isMobile ? 20 : 40,
                child: Image.asset('images/evo-vector.png', height: isMobile ? 30 : 50),
              ),
              Positioned(
                top: isMobile ? 250 : 380,
                right: isMobile ? null : 220,
                left: isMobile ? 50 : null,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RoadMapPage(index: _currentPage),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Colors.cyan),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'LEARN MORE',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: isMobile ? 10 : 20,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: _currentPage == index ? 12 : 8,
                      height: _currentPage == index ? 12 : 8,
                      decoration: BoxDecoration(
                        color: _currentPage == index ? Colors.cyan : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildPage(bool isMobile, String desktopImage, String mobileImage) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0A0A45),
        image: DecorationImage(
          image: AssetImage(isMobile ? mobileImage : desktopImage),
          fit:BoxFit.cover,
        ),
      ),
    );
  }
}

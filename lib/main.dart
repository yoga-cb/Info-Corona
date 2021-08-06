import 'package:corona/pages/bantuan_page.dart';
import 'package:corona/pages/home_page.dart';
import 'package:corona/pages/informasi_page.dart';
import 'package:corona/provider/covid_provider.dart';
import 'package:flutter/material.dart';
import 'package:corona/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CovidProvider(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    InformasiPage(),
    BantuanPage(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 82,
        child: BottomNavigationBar(
          iconSize: 24,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/icon_kasus.png',
                width: 24,
                color: greenColor,
              ),
              icon: Image.asset(
                'assets/icons/icon_kasus.png',
                width: 24,
              ),
              title: Text(
                'Kasus',
                style: GoogleFonts.poppins(),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/icon_informasi.png',
                width: 24,
                color: greenColor,
              ),
              icon: Image.asset(
                'assets/icons/icon_informasi.png',
                width: 24,
              ),
              title: Text(
                'Informasi',
                style: GoogleFonts.poppins(),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/icon_bantuan.png',
                width: 24,
                color: greenColor,
              ),
              icon: Image.asset(
                'assets/icons/icon_bantuan.png',
                width: 24,
              ),
              title: Text(
                'Bantuan',
                style: GoogleFonts.poppins(),
              ),
            ),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: greenColor,
          unselectedItemColor: greyColor,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          // fixedColor: greenColor,
          showUnselectedLabels: true,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

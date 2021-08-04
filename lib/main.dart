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
  Color _iconColor = greyColor;
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
              icon: Image.asset(
                'assets/icons/icon_kasus.png',
                color: _iconColor,
                width: 30,
              ),
              title: Text(
                'Kasus',
                style: GoogleFonts.poppins(),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/icon_informasi.png',
                color: _iconColor,
                width: 24,
              ),
              title: Text(
                'Informasi',
                style: GoogleFonts.poppins(),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/icon_bantuan.png',
                color: _iconColor,
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
          showUnselectedLabels: true,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _iconColor = greenColor;
            });
          },
        ),
      ),
    );
  }
}

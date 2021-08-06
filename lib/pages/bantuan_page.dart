import 'package:corona/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BantuanPage extends StatelessWidget {
  final String _tlp = 'tel:031 8430313';
  void _launchTlp() async => await canLaunch(_tlp)
      ? await launch('tel:031 8430313')
      : throw 'Could not launch $_tlp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            'assets/images/bantuan_image.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: edge,
              left: edge,
            ),
            child: Text(
              'Pusat\nBantuan',
              style: blackTextStyle.copyWith(fontSize: 36),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 310,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  color: bgColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Pusat Bantuan',
                        style: boldTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Jika anda mengalami gejala - gejala COVID-19\nsegera hubungi nomor di bawah',
                        style: greyTextStyle,
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Container(
                        height: 61,
                        width: MediaQuery.of(context).size.width - (edge * 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: whiteColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/icon_hotline.png',
                                width: 42,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'Hotline',
                                style: regularTextStyle.copyWith(fontSize: 18),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  _launchTlp();
                                },
                                child: Container(
                                  height: 30,
                                  width: 96,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: greenColor),
                                  child: Center(
                                    child: Text(
                                      'Panggil',
                                      style: GoogleFonts.poppins().copyWith(
                                        color: whiteColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:corona/theme.dart';

class InformasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            'assets/images/informasi_image.png',
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: edge, left: edge),
            child: Text(
              'Tentang\nCOVID-19',
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
                        'Informasi Mengenai COVID-19',
                        style: boldTextStyle.copyWith(fontSize: 18),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      // NOTE: MENGENAL
                      Container(
                        height: 61,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: whiteColor),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icons/icon_mengenal.png',
                                width: 40,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'Mengenal',
                                style: regularTextStyle.copyWith(fontSize: 18),
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/icons/icon_tap.png',
                                width: 11,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      // NOTE: RUMAH SAKIT
                      Container(
                        height: 61,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: whiteColor),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icons/icon_RumahSakit.png',
                                width: 42,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'Rumah Sakit',
                                style: regularTextStyle.copyWith(fontSize: 18),
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/icons/icon_tap.png',
                                width: 11,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      // NOTE: NEWS
                      Container(
                        height: 61,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: whiteColor),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icons/icon_news.png',
                                width: 42,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'News',
                                style: regularTextStyle.copyWith(fontSize: 18),
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/icons/icon_tap.png',
                                width: 11,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      // NOTE: RUMAH SAKIT
                      Container(
                        height: 61,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: whiteColor),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icons/icon_hoax.png',
                                width: 42,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'Hoax',
                                style: regularTextStyle.copyWith(fontSize: 18),
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/icons/icon_tap.png',
                                width: 11,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}

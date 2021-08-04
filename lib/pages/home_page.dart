import 'package:corona/widget/covid_card.dart';
import 'package:flutter/material.dart';
import 'package:corona/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:corona/provider/covid_provider.dart';
import 'package:corona/model/covid.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var covidProvider = Provider.of<CovidProvider>(context);
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd MMMM yyyy').format(now);
    covidProvider.getCovidData();
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/home_page_image.png',
              height: 350,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: edge, left: edge),
              child: Text(
                'Ayo\nLawan\nCOVID-19',
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
                    padding: EdgeInsets.only(left: edge),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Update Kasus Hari Ini',
                          style: boldTextStyle.copyWith(fontSize: 18),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Terakhir di Update ${formattedDate}',
                          style: greyTextStyle.copyWith(fontSize: 12),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        FutureBuilder(
                            future: covidProvider.getCovidData(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                List<Covid> data = snapshot.data;
                                return Column(
                                  children: data.map((item) {
                                    return Container(
                                      child: CovidCard(item),
                                    );
                                  }).toList(),
                                );
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            })
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

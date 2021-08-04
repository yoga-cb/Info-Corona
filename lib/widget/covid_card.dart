import 'package:flutter/material.dart';
import 'package:corona/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:corona/model/covid.dart';

class CovidCard extends StatelessWidget {
  final Covid covid;

  CovidCard(this.covid);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 108,
          width: MediaQuery.of(context).size.width - (2 * edge),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/icon_positif.png',
                  width: 50,
                ),
                SizedBox(
                  width: 64,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${covid.positif}',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: yellowColor),
                    ),
                    Text(
                      'Kasus Positif',
                      style: greyTextStyle,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        // NOTE: KASUS SEMBUH
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 108,
          width: MediaQuery.of(context).size.width - (2 * edge),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/icon_sembuh.png',
                  width: 50,
                ),
                SizedBox(
                  width: 64,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${covid.sembuh}',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: greenColor),
                    ),
                    Text(
                      'Sembuh',
                      style: greyTextStyle,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ), // NOTE: MENINGGAL
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 108,
          width: MediaQuery.of(context).size.width - (2 * edge),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/icon_meninggal.png',
                  width: 50,
                ),
                SizedBox(
                  width: 64,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${covid.meninggal}',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: redColor),
                    ),
                    Text(
                      'Meninggal',
                      style: greyTextStyle,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

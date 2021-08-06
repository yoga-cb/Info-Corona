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
        dataCard('assets/icons/icon_positif.png', '${covid.positif}', 'Positif',
            yellowColor),
        SizedBox(
          height: 30,
        ),
        dataCard('assets/icons/icon_sembuh.png', '${covid.sembuh}', 'Sembuh',
            greenColor),
        SizedBox(
          height: 30,
        ),
        dataCard('assets/icons/icon_meninggal.png', '${covid.meninggal}',
            'meninggal', redColor),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  dataCard(String image, String data, String kasus, Color textColor) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 108,
      margin: EdgeInsets.only(right: edge),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: edge),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 50,
            ),
            SizedBox(
              width: 64,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data,
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: textColor),
                  ),
                  Text(
                    kasus,
                    style: greyTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

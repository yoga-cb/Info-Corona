import 'package:flutter/material.dart';
import 'package:corona/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ErorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/underConstruct_image.png',
              width: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              'Sorry, this feature is still under development',
              style: regularTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: greenColor,
                      shape: StadiumBorder(),
                      textStyle: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w400,
                          color: whiteColor,
                          fontSize: 20)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back')),
            )
          ],
        ),
      )),
    );
  }
}

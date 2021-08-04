import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:corona/theme.dart';

class loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              height: 108,
              width: MediaQuery.of(context).size.width - (2 * edge),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              height: 108,
              width: MediaQuery.of(context).size.width - (2 * edge),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              height: 108,
              width: MediaQuery.of(context).size.width - (2 * edge),
            ),
          ],
        ),
        gradient: LinearGradient(
            colors: [Colors.grey[200], Colors.grey[300], Colors.white70]));
  }
}

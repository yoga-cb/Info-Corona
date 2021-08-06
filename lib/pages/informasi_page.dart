import 'package:flutter/material.dart';
import 'package:corona/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class InformasiPage extends StatefulWidget {
  @override
  _InformasiPageState createState() => _InformasiPageState();
}

class _InformasiPageState extends State<InformasiPage> {
  String _url;
  final String _mengenal = 'https://www.alodokter.com/virus-corona';
  final String _rumahSakit = 'https://yankes.kemkes.go.id/app/siranap/';
  final String _news =
      'https://search.kompas.com/search/?q=corona&submit=Submit';
  final String _hoax = 'https://covid19.go.id/p/hoax-buster/';
  void _launchURL() async => await canLaunch(_url)
      ? await launch(
          _url,
          forceWebView: true,
          enableJavaScript: true,
        )
      : throw 'Could not launch $_url';

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
                      infoCard('assets/icons/icon_mengenal.png', 'mengenal',
                          _mengenal),
                      SizedBox(
                        height: 11,
                      ),
                      infoCard('assets/icons/icon_RumahSakit.png',
                          'Rumah Sakit', _rumahSakit),
                      SizedBox(
                        height: 11,
                      ),
                      infoCard('assets/icons/icon_news.png', 'News', _news),
                      SizedBox(
                        height: 11,
                      ),
                      infoCard('assets/icons/icon_hoax.png', 'Hoax', _hoax),
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

  Container infoCard(String icon, String label, String url) {
    return Container(
      height: 61,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: edge),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              icon,
              width: 40,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              label,
              style: regularTextStyle.copyWith(fontSize: 18),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  _url = url;
                  _launchURL();
                });
              },
              child: Image.asset(
                'assets/icons/icon_tap.png',
                width: 11,
              ),
            )
          ],
        ),
      ),
    );
  }
}

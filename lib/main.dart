import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Outfit'),
      home: Scaffold(
        appBar: AppBar(title: const Text('FontFamily Change')),
        body: FontFamiliesWidget(),
      ),
    );
  }
}

class FontFamiliesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'regular',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w400,
            fontSize: 40,
          ),
        ),
        Text(
          'medium',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w500,
            fontSize: 40,
          ),
        ),
        Text(
          'bold',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w700,
            fontSize: 40,
          ),
        ),
        Text('bebas', style: TextStyle(fontFamily: 'BebasNeue', fontSize: 40)),
        Text(
          'Google Fonts Import',
          style: GoogleFonts.sacramento(textStyle: TextStyle(fontSize: 40)),
        ),
      ],
    );
  }
}

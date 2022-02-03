import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:himu_shop/config/theme.dart';

class DefaultBTN extends StatelessWidget {
  DefaultBTN({this.btnText});
  final String? btnText;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
            gradient: LinearGradient(
                colors: [Colors.red, Colors.deepOrange],
                end: Alignment.bottomLeft,
                begin: Alignment.topRight)),
        child: Center(
          child: Text(
            btnText!,
            style: GoogleFonts.openSans(
                textStyle: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        ));
  }
}

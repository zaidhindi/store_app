import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/wedgits/home/home_body.dart';

class HomeScreen
    extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: kPrimaryColor,
      title: Text(
        "مرحبا بكم في متجر الاكترونيات ",
        style: GoogleFonts.getFont(
          'Almarai',
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    );
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBar,
      body: HomeBody(),
    );
  }
}

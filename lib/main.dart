import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical shop',
      theme: ThemeData(
        textTheme:
            GoogleFonts.almaraiTextTheme(
              Theme.of(
                context,
              ).textTheme,
            ),
        colorScheme:
            ColorScheme.fromSeed(
              seedColor: kPrimaryColor,
              secondary: kPrimaryColor,
            ),
      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations
            .delegate,
        GlobalMaterialLocalizations
            .delegate,
        GlobalWidgetsLocalizations
            .delegate,
      ],
      supportedLocales: const [
        Locale("ar", "AE"),
      ],
      locale: const Locale("ar", "AE"),
      home: const HomeScreen(),
    );
  }
}

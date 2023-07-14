import 'package:fintech/utils/color.dart';
import 'package:fintech/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: kPrimaryColor,
          background: kScaffoldBgColor,
        ),
        useMaterial3: true,
        fontFamily: GoogleFonts.urbanist().fontFamily,
        dividerColor: kDividerColor,
        appBarTheme: AppBarTheme(
          centerTitle: false,
          backgroundColor: kScaffoldBgColor,
          elevation: 0,
          titleTextStyle: GoogleFonts.urbanist(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: kBlackText,
          ),
        ),
        textTheme: TextTheme(
          titleMedium: GoogleFonts.urbanist(
            fontSize: 42,
            fontWeight: FontWeight.w600,
            color: kWhiteColor,
            height: 1.3,
            letterSpacing: 0.2,
          ),
          titleSmall: GoogleFonts.urbanist(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: GoogleFonts.urbanist(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: kLightWhiteColor,
          ),
          bodyLarge: GoogleFonts.urbanist(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: kBlackText,
          ),
          headlineSmall: GoogleFonts.urbanist(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: kBlackText,
          ),
          headlineMedium: GoogleFonts.urbanist(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: kBlackText,
          ),
          headlineLarge: GoogleFonts.montserrat(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: kLightWhiteColor,
          ),
          displaySmall: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: kMediumWhiteColor,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

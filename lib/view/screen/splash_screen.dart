import 'package:fintech/utils/assets.dart';
import 'package:fintech/utils/color.dart';
import 'package:fintech/utils/strings.dart';
import 'package:fintech/view/screen/nav_bar/navbar_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: Image.asset(
              AppAssets.splashBg,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 30),
            child: RichText(
              text: TextSpan(
                text: AppString.s1,
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: AppString.s2,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const NavBarScreen(),
              ),
              (route) => false);
        },
        child: Container(
          height: 62,
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Text(
            AppString.exchange,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:jobbay/config/Palette.dart';
import 'package:jobbay/config/SizeConfig.dart';
import 'package:jobbay/screens/splash/components/DefaultButton.dart';
import 'package:jobbay/screens/splash/container/SplashContent.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Find new job opportunities",
      "image": "assets/images/flag.svg",
    },
    {
      "text": "Discover your true calling",
      "image": "assets/images/offer.svg",
    },
    {
      "text": "Hire the right person",
      "image": "assets/images/interview.svg",
    },
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Spacer(),
          Expanded(
              flex: 7,
              child: PageView.builder(
                onPageChanged: (value) => setState(() => currentPage = value),
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"]!,
                  image: splashData[index]["image"]!,
                ),
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(10),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(70),
                    child: defaultButton(
                      key: const Key("btnContinue"),
                      press: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      text: "Continue",
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 800),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Palette.primaryColor
            : const Color(0XFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobbay/config/Palette.dart';
import 'package:jobbay/config/SizeConfig.dart';

class defaultButton extends StatelessWidget {
  const defaultButton({Key? key, required this.text, required this.press})
      : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        foregroundColor: Palette.lightBlue
      ),

      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(18),
          color: Colors.black,
        ),
      ),

    );
  }
}

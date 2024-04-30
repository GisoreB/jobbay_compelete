import 'package:flutter/material.dart';
import 'package:jobbay/config/Constants.dart';
import 'package:jobbay/screens/applicant/home/widgets/SearchControl.dart';
import 'package:jobbay/screens/applicant/home/widgets/SearchTag.dart';

class HomeSubHeader extends StatelessWidget {
  const HomeSubHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Expanded(
                child: SearchControl(),
              ),
            ],
          ),
          SizedBox(height: kSpacingUnit * 2),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SearchTag(tag: 'Categories'),
              SearchTag(tag: 'All Jobs'),
              SearchTag(tag: 'Companies'),
            ],
          )
        ],
      ),
    );
  }
}

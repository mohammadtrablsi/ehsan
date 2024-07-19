import 'package:ehsan/Features/profile/presention/views/widgets/cardInProfile.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/dataInProfilePart.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/appHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
        text: "profile",
        widget: Padding(
          padding: EdgeInsets.symmetric(horizontal: kAppPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              const CardInProfile(),
              SizedBox(
                height: 4.h,
              ),
              const DataInProfilePart(),
            ],
          ),
        ),
      ),
    );
  }
}

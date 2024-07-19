import 'package:ehsan/Features/Auth/presentation/views/widgets/authTextField.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/appBackgroundImage.dart';
import 'package:ehsan/core/utils/classes/appButton.dart';
import 'package:ehsan/core/utils/classes/appHeader.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AskDoubtBody extends StatelessWidget {
  const AskDoubtBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    return Scaffold(
      body: AppHeader(
        text: 'Ask Doubt',
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kAppPadding),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    AuthTextField(
                      maxLines: 1,
                      minLines: 1,
                      controller: controller1,
                      label: 'enter the title',
                      preIcon: Icons.password,
                      obscureText: false,
                      suffixIcon: null,
                      suffixIconOnPressed: () {
                        // loginCubit.revPassword();
                      },
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    AuthTextField(
                      maxLines: 6,
                      minLines: 1,
                      controller: controller2,
                      label: 'enter the description',
                      preIcon: Icons.password,
                      obscureText: false,
                      suffixIcon: null,
                      suffixIconOnPressed: () {
                        // loginCubit.revPassword();
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppButton(paddingVertical: 1.3.h, text: "send"),
                  ],
                ),
              ),
            ),
            // const Spacer(),
            // const AppBackgroundImage(),
          ],
        ),
      ),
    );
  }
}

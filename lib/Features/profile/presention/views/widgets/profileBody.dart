import 'package:ehsan/Features/profile/presention/manger/viewProfileCubit.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/cardInProfile.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/dataInProfilePart.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/shimmerCardInProfile.dart';
import 'package:ehsan/Features/profile/presention/views/widgets/shimmerDataInProfilePart.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:ehsan/core/utils/classes/appHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
        text: "معلومات الطالب",
        widget: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kAppPadding),
            child: BlocBuilder<ViewProfileCubit, ViewProfileState>(
              builder: (context, state) {
                if (state is ViewProfileSuccess) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      CardInProfile(data: state.entity),
                      SizedBox(
                        height: 4.h,
                      ),
                      DataInProfilePart(entity: state.entity),
                    ],
                  );
                }
                if (state is ViewProfileFailure) {
                  return Container(
                    width: 30.w,
                    height: 15.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AssetsData.logo),
                            fit: BoxFit.cover)),
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      const ShimmerCardInProfile(),
                      SizedBox(
                        height: 4.h,
                      ),
                      const ShimmerDataInProfilePart(),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

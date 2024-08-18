import 'package:ehsan/Features/Auth/presentation/views/widgets/authTextField.dart';
import 'package:ehsan/Features/askDoubt/presention/manger/makeAskDoubtCubit.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/classes/appBackgroundImage.dart';
import 'package:ehsan/core/utils/classes/appButton.dart';
import 'package:ehsan/core/utils/classes/appHeader.dart';
import 'package:ehsan/core/utils/functions/appToast.dart';
import 'package:ehsan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class AskDoubtBody extends StatelessWidget {
  const AskDoubtBody({super.key});

  @override
  Widget build(BuildContext context) {
    final makeAskDoubtCubit = context.read<MakeAskDoubtCubit>();
    return Scaffold(
      body: AppHeader(
        text: 'اقتراحات وشكاوي',
        widget: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
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
                          controller: makeAskDoubtCubit.title,
                          label: 'أدخل العنوان',
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
                          controller: makeAskDoubtCubit.description,
                          label: 'أدخل الوصف',
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
                        BlocConsumer<MakeAskDoubtCubit, MakeAskDoubtState>(
                          listener: (context, state) {
                            if (state is MakeAskDoubtSuccess) {
                              appToast(context, state.entity.message ?? "");
                            } else if (state is MakeAskDoubtFailure) {
                              appToast(context, "يوجد خطأ");
                            }
                          },
                          builder: (context, state) {
                            if (state is MakeAskDoubtSuccess ||
                                state is MakeAskDoubtInitial ||
                                state is MakeAskDoubtFailure) {
                              return AppButton(
                                isLoading: false,
                                paddingVertical: 1.3.h,
                                text: "إرسال",
                                onTap: () {
                                  makeAskDoubtCubit.makeAskDoubt({
                                    "Authorization":
                                        "Bearer ${prefs!.getString('token')}"
                                  }, {
                                    "type": makeAskDoubtCubit.title.text,
                                    "description":
                                        makeAskDoubtCubit.description.text,
                                  });
                                },
                              );
                            } else if (state is MakeAskDoubtLoading) {
                              return AppButton(
                                isLoading: true,
                                paddingVertical: 1.3.h,
                                text: "إرسال",
                                onTap: () {
                                  makeAskDoubtCubit.makeAskDoubt({}, {
                                    "type": makeAskDoubtCubit.title.text,
                                    "description":
                                        makeAskDoubtCubit.description.text,
                                  });
                                },
                              );
                            } else {
                              return const SizedBox();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                // const Spacer(),
                // const AppBackgroundImage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

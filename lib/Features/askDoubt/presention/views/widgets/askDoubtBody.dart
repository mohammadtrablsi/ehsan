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
                      controller: makeAskDoubtCubit.title,
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
                      controller: makeAskDoubtCubit.description,
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
                    BlocConsumer<MakeAskDoubtCubit, MakeAskDoubtState>(
                      listener: (context, state) {
                        if (state is MakeAskDoubtSuccess) {
                          appToast(context, state.entity.message!);
                        } else if (state is MakeAskDoubtFailure) {
                          appToast(context, "has an error");
                        }
                      },
                      builder: (context, state) {
                        if (state is MakeAskDoubtSuccess ||
                            state is MakeAskDoubtInitial ||
                            state is MakeAskDoubtFailure) {
                          return AppButton(
                            isLoading: false,
                            paddingVertical: 1.3.h,
                            text: "send",
                            onTap: () {
                              makeAskDoubtCubit.makeAskDoubt({"Authorization":"Bearer $token"}, {
                                "type": "اقتراح",
                                "description": "وصف الاقتراح"
                              });
                            },
                          );
                        } else if (state is MakeAskDoubtLoading) {
                          return AppButton(
                            isLoading: true,
                            paddingVertical: 1.3.h,
                            text: "send",
                            onTap: () {
                              makeAskDoubtCubit.makeAskDoubt({}, {
                                "type": "اقتراح",
                                "description": "وصف الاقتراح"
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
    );
  }
}

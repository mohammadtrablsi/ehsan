import 'package:ehsan/Features/Auth/presentation/manger/loginCubit.dart';
import 'package:ehsan/Features/Auth/presentation/views/widgets/authButton.dart';
import 'package:ehsan/Features/Auth/presentation/views/widgets/authTextField.dart';
import 'package:ehsan/core/utils/app_router.dart';
import 'package:ehsan/core/utils/classes/animatedAppHeader.dart';
import 'package:ehsan/core/utils/classes/appButton.dart';
import 'package:ehsan/core/utils/classes/appHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/functions/appToast.dart';
import '../../../../../core/utils/functions/validatore.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController? email = TextEditingController();
  TextEditingController? name = TextEditingController();
  TextEditingController? password = TextEditingController();
  TextEditingController? repeatPassword = TextEditingController();
  GlobalKey<FormState>? formstate = GlobalKey<FormState>();
  bool isPressed = false;
  @override
  void initState() {
    email = TextEditingController();
    name = TextEditingController();
    password = TextEditingController();
    repeatPassword = TextEditingController();
    repeatPassword = TextEditingController();
    formstate = GlobalKey<FormState>();
    Future.delayed(const Duration(milliseconds: 400))
        .then((value) => setState(() {
              isPressed = true;
            }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            AnimatedAppHeader(
              firstHeight: 25.h,
              secondHeight: 40.h,
              widget: SingleChildScrollView(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    AnimatedPadding(
                      padding: isPressed
                          ? EdgeInsetsDirectional.only(
                              top: 16.h, bottom: 6.h, start: 5.w, end: 5.w)
                          : EdgeInsets.symmetric(horizontal: 5.w),
                      duration: const Duration(milliseconds: 400),
                      child: Form(
                        key: formstate,
                        child: Column(
                          children: [
                            AuthTextField(
                              controller: name,
                              label: 'enter your name',
                              preIcon: Icons.person,
                              vaildator: (val) {
                                return vaildator(val!, 2, 20, 'name');
                              },
                              obscureText: false,
                              suffixIcon: null,
                              suffixIconOnPressed: () {},
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            BlocBuilder<LoginCubit, LoginState>(
                                builder: (context, state) {
                              return AuthTextField(
                                controller: password,
                                label: 'enter your password',
                                preIcon: Icons.password,
                                vaildator: (val) {
                                  return vaildator(val!, 5, 15, 'password');
                                },
                                obscureText: loginCubit.isPassword,
                                suffixIcon: loginCubit.isPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                suffixIconOnPressed: () {
                                  loginCubit.revPassword();
                                },
                              );
                            }),
                            SizedBox(
                              height: 7.h,
                            ),
                            AppButton(
                              paddingVertical: 1.6.h,
                              text: 'Login',
                              onTap: () => setState(() {
                                AppRouter.router.push(AppRouter.kHomeRoute);
                              }),
                            ),
                            // AuthButton(
                            //   widget: BlocListener<LoginCubit, LoginState>(
                            //     listener: (context, state) {
                            //       if (state is LoginSuccess) {
                            //         appToast(
                            //             context, 'Registration successful!');
                            //       } else if (state is LoginFailure) {
                            //         appToast(context, state.errMessage);
                            //       }
                            //     },
                            //     child: BlocBuilder<LoginCubit, LoginState>(
                            //       builder: (context, state) {
                            //         if (state is LoginLoading) {
                            //           return SizedBox(
                            //             height: 3.h,
                            //             width: 6.w,
                            //             child: const CircularProgressIndicator(
                            //               color: Colors.white,
                            //             ),
                            //           );
                            //         } else {
                            //           return Text(
                            //             "Create",
                            //             style: TextStyle(
                            //               fontSize: 13.sp,
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //             ),
                            //           );
                            //         }
                            //       },
                            //     ),
                            //   ),
                            //   radius: 13.sp,
                            //   paddinghorizontal: 7.h,
                            //   paddingvertical: 2.h,
                            //   onpressed: () {
                            //     loginCubit.makeLogin({
                            //       "password": password!.text,
                            //       "username": name!.text
                            //     }, formstate, context);
                            //   },
                            // ),
                            SizedBox(
                              height: 1.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: isPressed ? 8.h : 7.h,
              right: 2.w,
              child: AnimatedScale(
                duration: const Duration(milliseconds: 400),
                scale: isPressed ? 1 * 1.3 : 1,
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 400),
                  padding: isPressed
                      ? EdgeInsetsDirectional.only(end: 10.w, top: 2.h)
                      : EdgeInsetsDirectional.zero,
                  child: Container(
                    height: 132,
                    width: 295,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AssetsData.imageForLogin),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 25.h,
              left: kAppPadding * 2,
              child: AnimatedContainer(
                padding: isPressed
                    ? EdgeInsetsDirectional.only(top: 10.h)
                    : EdgeInsets.zero,
                duration: const Duration(milliseconds: 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 400),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp,
                        color: isPressed ? Colors.black : kContentColor1,
                      ),
                      child: const Text("Hi student"),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 400),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: isPressed
                            ? Colors.black.withOpacity(0.6)
                            : kContentColor1,
                      ),
                      child: const Text("sign in to contiune"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}

import 'package:ehsan/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class AppHeader extends StatelessWidget {
  const AppHeader(
      {super.key,
      required this.widget,
      this.text,
      this.height,
      this.widgetInHeader});
  final Widget widget;
  final String? text;
  final double? height;
  final Widget? widgetInHeader;

  @override
  Widget build(BuildContext context) {
    double defaultHeight = 16.h;
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: height ?? defaultHeight, // Adjust height as needed
                    color: kPrimaryColor,
                    child: text != null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                text ?? "",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: kContentColor1),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: kContentColor1,
                                ),
                                onPressed: () {
                                  context.pop();
                                },
                              ),
                            ],
                          )
                        : widgetInHeader,
                  ),
                ),
              ],
            ),
            Flexible(
              child: Container(
                  width: double.infinity, ///////////////////
                  height: 84.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.sp),
                          topRight: Radius.circular(25.sp))),
                  child: widget),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Start from top-left corner
    path.lineTo(0, size.height - 30);
    // Draw rounded bottom left corner
    path.quadraticBezierTo(0, size.height, 30, size.height);
    // Draw bottom edge
    path.lineTo(size.width - 30, size.height);
    // Draw rounded bottom right corner
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 30);
    // Draw right edge up to top-right corner
    path.lineTo(size.width, 0);
    // Draw top edge
    path.lineTo(0, 0);
    // Close the path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

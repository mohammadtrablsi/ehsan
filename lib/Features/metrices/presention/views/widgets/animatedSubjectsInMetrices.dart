import 'package:ehsan/Features/metrices/domain/entites/subjectsEntity.dart';
import 'package:ehsan/Features/metrices/presention/views/widgets/subjectsInMetrices.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedSubjectsInMetrices extends StatefulWidget {
  const AnimatedSubjectsInMetrices({super.key, required this.data});
  final SubjectsEntity data;

  @override
  State<AnimatedSubjectsInMetrices> createState() =>
      _AnimatedSubjectsInMetricesState();
}

class _AnimatedSubjectsInMetricesState
    extends State<AnimatedSubjectsInMetrices> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isPressed = !isPressed;
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0.5.h),
            child: const Icon(Icons.arrow_right),
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: isPressed ? 1 : 0,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: isPressed
                ? SizedBox(width: 85.w, child: SubjectsInMetrices(data:widget.data))
                : Container(),
          ),
        ),
      ],
    );
  }
}
// import 'package:ehsan/Features/metrices/presention/views/widgets/subjectsInMetrices.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// class AnimatedSubjectsInMetrices extends StatefulWidget {
//   const AnimatedSubjectsInMetrices({super.key});

//   @override
//   State<AnimatedSubjectsInMetrices> createState() =>
//       _AnimatedSubjectsInMetricesState();
// }

// class _AnimatedSubjectsInMetricesState extends State<AnimatedSubjectsInMetrices>
//     with SingleTickerProviderStateMixin {
//   bool isPressed = false;
//   late AnimationController animcontroller;
//   late Animation<double> animationOpacity;
//   late Animation<Offset> animationSlide;

//   @override
//   void initState() {
//     super.initState();
//     animcontroller = AnimationController(
//         duration: const Duration(milliseconds: 300), vsync: this);

//     animationOpacity = Tween<double>(begin: 0, end: 1).animate(animcontroller)
//       ..addListener(() {
//         setState(() {});
//       });

//     animationSlide = Tween<Offset>(begin: const Offset(-6, 0), end: Offset.zero)
//         .animate(animcontroller)
//       ..addListener(() {
//         setState(() {});
//       });
//   }

//   @override
//   void dispose() {
//     animcontroller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         InkWell(
//           onTap: () {
//             setState(() {
//               isPressed = !isPressed;
//               if (isPressed) {
//                 animcontroller.forward();
//               } else {
//                 animcontroller.reverse(from: 1.0);
//               }
//             });
//           },
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 0.5.h),
//             child: const Icon(Icons.arrow_right),
//           ),
//         ),
//         AnimatedBuilder(
//           animation: animcontroller,
//           builder: (context, child) {
//             return AnimatedOpacity(
//               duration: const Duration(milliseconds: 300),
//               opacity: animationOpacity.value,
//               child: SlideTransition(
//                 position: animationSlide,
//                 child: AnimatedSwitcher(
//                   duration: const Duration(milliseconds: 300),
//                   child: isPressed
//                       ? SizedBox(width: 85.w, child: const SubjectsInMetrices())
//                       : Container(),
//                 ),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }

import 'package:avatar_glow/avatar_glow.dart';
import 'package:ehsan/Features/events/presention/views/widgets/buttonInEventsDetails.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sizer/sizer.dart';
import 'package:go_router/go_router.dart';

class EventDetailsBody extends StatelessWidget {
  const EventDetailsBody({super.key, required this.indexForTag});
  final int indexForTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Column(
            children: [
              _imageInEventDetails(),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kAppPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _timeInEventDetails(),
                    SizedBox(
                      height: 1.h,
                    ),
                    _nameOfEvent(),
                    SizedBox(
                      height: 1.h,
                    ),
                    SingleChildScrollView(child: _descriptionOfEvent()),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              left: 5.5.w,
              bottom: 4.h,
              child: AvatarGlow(
                // glowBorderRadius: BorderRadius.circular(15.sp),
                //               startDelay: const Duration(milliseconds: 1000),
                glowColor: Colors.blue,
                glowShape: BoxShape.circle,
                //               animate: true,
                //               curve: Curves.fastOutSlowIn,
                //               glowCount: 1,
                //               // glowRadiusFactor:
                //               //     3.0, // Keep this value to control the width of the effect
                //               // endRadius: 60.0,
                child: InkWell(
                  borderRadius: BorderRadius.circular(180 * 3.14),
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 7.w,
                    backgroundColor: kPrimaryColor,
                    child: Icon(
                      Icons.app_registration,
                      color: kContentColor1,
                      size: 20.sp,
                    ),
                  ),
                ),
              )),
          // Stack(
          //   // alignment: Alignment.center,
          //   children: [
          //     Positioned(
          //         // left: 101,
          //         bottom: 2.5.h,
          //         child: Transform.translate(
          //           offset: Offset(-24.w, -1.2.h),
          //           child: Transform(
          //             transform: Matrix4.diagonal3Values(
          //                 2.4, 1.1, 1.1), // Adjust the 0.5 to scale the height
          //             child: AvatarGlow(
          //               glowBorderRadius: BorderRadius.circular(15.sp),
          //               startDelay: const Duration(milliseconds: 1000),
          //               glowColor: Colors.blue,
          //               glowShape: BoxShape.rectangle,
          //               animate: true,
          //               curve: Curves.fastOutSlowIn,
          //               glowCount: 1,
          //               // glowRadiusFactor:
          //               //     3.0, // Keep this value to control the width of the effect
          //               // endRadius: 60.0, // Adjust as needed
          //               child: SizedBox(
          //                 height: 5.h,
          //                 width: 40.w,
          //               ),
          //             ),
          //           ),
          //         )),
          //     Positioned(
          //         left: 5.w,
          //         bottom: 3.75.h,
          //         child: const ButtonInEventsDetails()),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _imageInEventDetails() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Hero(
          tag: 'tag$indexForTag',
          child: Container(
            width: double.infinity,
            height: 36.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetsData.eventImage),
                    fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          top: 6.h,
          right: 2.w,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_sharp,
                color: kContentColor1,
                size: 20.sp,
              )),
        ),
      ],
    );
  }

  Widget _timeInEventDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 60.w),
          child: Text(
            "06 يناير 23، 09:00 صباحًا",
            maxLines: 1,
            style: TextStyle(
                fontSize: 10.sp,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          width: 0.3.w,
        ),
        Icon(
          Icons.lock_clock_outlined,
          size: 13.sp,
          color: kPrimaryColor,
        ),
      ],
    );
  }

  Widget _nameOfEvent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kAppPadding),
      child: Text(
        "مسابقة صيد الأسماك",
        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w900),
      ),
    );
  }

  Widget _descriptionOfEvent() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Text(
        " مسابقة صيد الأسماك هي حدث يجمع بين عشاق صيد الأسماك للتنافس في صيد أكبر وأثقل الأسماك. تُنظم هذه المسابقات عادة على مدى عدة أيام حيث يقوم المشاركون بالخروج إلى المياه المفتوحة، سواء كانت بحيرة، بحر أو نهر، للبحث عن الأسماك ذات الحجم الكبير وتسجيلها بواسطة الوزن أو الطول. تهدف هذه المسابقات إلى تعزيز المهارات الصيدية والترفيه عن المشاركين، بالإضافة إلى دعم حفظ الموارد الطبيعية والاستدامة في صيد الأسماك. وتشكل هذه الفعاليات مناسبة للتعرف على أنواع مختلفة من الأسماك والمحافظة على التوازن البيئي، حيث يتم تحفيز المشاركين على احترام القوانين البيئية وتقديم مساهمات فعالة في مجال الحفاظ على البيئة البحرية والمياه العذبة.",
        style: TextStyle(
            // height: 1.3,
            fontSize: 12.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}

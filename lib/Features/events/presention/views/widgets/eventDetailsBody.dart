import 'package:ehsan/Features/events/presention/views/widgets/buttonInEventsDetails.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EventDetailsBody extends StatelessWidget {
  const EventDetailsBody({super.key});

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
              left: 5.w, bottom: 4.h, child: const ButtonInEventsDetails()),
        ],
      ),
    );
  }

  Widget _imageInEventDetails() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: double.infinity,
          height: 36.h,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetsData.toDo2), fit: BoxFit.cover)),
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

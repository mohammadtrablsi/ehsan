import 'package:ehsan/Features/events/domain/entites/eventsEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key, required this.indexForTag, required this.data});
  final int indexForTag;
  final EventsEntity data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(2.5.w),
      decoration: BoxDecoration(
          border: Border.all(width: 0.08.h, color: Colors.grey),
          borderRadius: BorderRadius.circular(15.sp)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            data.name ?? "",
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 1.2.h,
          ),
          _eventItemCard(),
        ],
      ),
    );
  }

  Widget _eventItemCard() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _textsInEventItemCard(),
        SizedBox(
          width: 2.5.w,
        ),
        _imageInEventitemCard(),
      ],
    );
  }

  Widget _imageInEventitemCard() {
    return Hero(
      tag: 'tag$indexForTag',
      child: Container(
        width: 20.w,
        height: 10.h,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10.sp),
            image: DecorationImage(
                image: NetworkImage(data.photo ?? noImage), fit: BoxFit.cover)),
      ),
    );
  }

  Widget _textsInEventItemCard() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 60.w),
                child: Text(
                  data.date ?? "", //"06 يناير 23، 09:00 صباحًا"
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 8.sp,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 0.5.w,
              ),
              FaIcon(FontAwesomeIcons.clock, color: kPrimaryColor, size: 9.sp),
            ],
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              constraints: BoxConstraints(maxWidth: 60.w),
              child: Text(
                data.place ?? "", //"06 يناير 23، 09:00 صباحًا"
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 0.4.h,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              constraints: BoxConstraints(maxWidth: 70.w),
              child: Text(
                data.description ??
                    "", ////"مسابقة صيد الأسماك هي حدث يجمع بين عشاق صيد الأسماك للتنافس في صيد أكبر وأثقل الأسماك. تُنظم هذه المسابقات عادة على مدى عدة أيام حيث يقوم المشاركون بالخروج إلى المياه المفتوحة، سواء كانت بحيرة، بحر أو نهر، للبحث عن الأسماك ذات الحجم الكبير وتسجيلها بواسطة الوزن أو الطول. تهدف هذه المسابقات إلى تعزيز المهارات الصيدية والترفيه عن المشاركين، بالإضافة إلى دعم حفظ الموارد الطبيعية والاستدامة في صيد الأسماك.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    height: 1.3,
                    fontSize: 10.sp,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

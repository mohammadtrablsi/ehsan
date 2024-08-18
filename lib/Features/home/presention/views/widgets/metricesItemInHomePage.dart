import 'package:ehsan/Features/home/domain/entites/homeEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/assets.dart';
import 'package:ehsan/core/utils/functions/getJustFirstNumberAfterCama.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MetricesItemInHomePage extends StatefulWidget {
  const MetricesItemInHomePage(
      {super.key,
      required this.data,
      required this.index,
      required this.image,
      required this.colorOfAroundImage});
  final HomeEntity data;
  final int index;
  final String image;
  final Color colorOfAroundImage;

  @override
  State<MetricesItemInHomePage> createState() => _MetricesItemInHomePageState();
}

class _MetricesItemInHomePageState extends State<MetricesItemInHomePage> {
  bool isLoading = false;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 200)).then((_) {
      setState(() {
        isLoading = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle1 =
        TextStyle(fontWeight: FontWeight.w900, fontSize: 20.sp);
    TextStyle? textStyle2 = TextStyle(color: Colors.grey, fontSize: 11.sp);
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 1000),
      opacity: isLoading ? 1 : 0,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 1000),
        scale: 1,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          height: 25.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.2.h, color: kPrimaryColor),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              _imageItem(),
              SizedBox(
                height: 2.h,
              ),
              Text(
                widget.index == 0
                    ? "${(getJustFirstNumberAfterCama(widget.data.average! * 100)!).toString()}%"
                    : widget.data.absences.toString(), //"80.39 %"
                style: textStyle1,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                widget.index == 0 ? "المعدل" : "الغيابات",
                style: textStyle2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageItem() {
    return Container(
      width: 18.w,
      height: 9.h,
      decoration: BoxDecoration(
        color: widget.colorOfAroundImage.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: Transform.scale(
        scale: widget.index == 1 ? 0.50 : 1,
        child: Container(
          width: 5.w,
          height: 2.5.h,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(widget.image)),
          ),
        ),
      ),
    );
  }
}

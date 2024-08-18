import 'package:ehsan/Features/Infringement/domain/entites/InfringementEntity.dart';
import 'package:ehsan/constants.dart';
import 'package:ehsan/core/utils/functions/formateDate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class InfringementItem extends StatelessWidget {
  const InfringementItem(
      {super.key, required this.isLatOrFirstItem, required this.data});
  final bool isLatOrFirstItem;
  final data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        _cardInfringementItem(),
        SizedBox(
          width: 4.w,
        ),
        _firstPart(),
      ],
    );
  }

  Widget _firstPart() {
    return const Column(
      children: [
        Icon(
          Icons.error,
          color: Colors.redAccent,
        ),
      ],
    );
  }

  Widget _cardInfringementItem() {
    return Container(
      width: 70.w,
      padding: EdgeInsets.all(2.5.w),
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(
              color: kPrimaryColor.withOpacity(0.7),
              width: isLatOrFirstItem ? 0.025.h * 2 : 0.025.h,
            ),
            bottom: BorderSide(
              color: kPrimaryColor.withOpacity(0.7),
              width: isLatOrFirstItem ? 0.025.h * 2 : 0.025.h,
            )),
      ),
      child: _subjectAndDate(),
    );
  }

  Widget _subjectAndDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          data.name ?? "",
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 0.1.h,
        ),
        _timePart()
      ],
    );
  }

  Widget _timePart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          data.date ?? "", //formateDate(data.date)
          style: TextStyle(
              fontSize: 10.sp, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
        SizedBox(
          width: 0.5.w,
        ),
        // Icon(Icons.lock_clock, size: 15.sp, color: Colors.grey),
        FaIcon(FontAwesomeIcons.calendar, size: 10.sp, color: Colors.grey),
      ],
    );
  }
}

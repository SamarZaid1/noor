import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';

class eventCard extends StatelessWidget {
  const eventCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 15.0, left: 15.0, bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.10),
                blurRadius: 30,
                offset: Offset(0, 6),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: ThemeColor.accentColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "assets/icons/poy.svg",

            ),
            Padding(
                padding: EdgeInsets.only(right: 8.w, left: 8.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Text("Product Design v1.0",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(
                            fontFamily: AppFonts.cairo,
                            fontSize: 12.sp,
                            color: ThemeColor.blackColor)),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                        width: 30.w,
                        child: Text("Robertson Connie",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                fontFamily: AppFonts.cairo,
                                fontSize: 9.sp,
                                color:
                                ThemeColor.fontColor))),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
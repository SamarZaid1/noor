import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';

class EventWidget extends StatelessWidget {
  String title, sub_title;
  bool show_size;
  EventWidget({required this.title, required this.sub_title,required this.show_size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: ThemeColor.cardsColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: EdgeInsets.only(right: 8.w, left: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("${title}",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: AppFonts.cairo,
                          fontSize: 12.sp,
                          color: ThemeColor.blackColor)),
                  SizedBox(
                      width: 20.w,
                      child: Text("${sub_title}",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  fontFamily: AppFonts.cairo,
                                  fontSize: 9.sp,
                                  color: ThemeColor.fontColor))),
                  SizedBox(
                    height: 0.h,
                  ),
                  SizedBox(
                    width: 20.w,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              ThemeColor.orangeColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: ThemeColor.orangeColor),
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(10),
                                        top: Radius.circular(10),
                                      ))),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(3.w),
                          child: Text(
                            'لنبدا',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontFamily: AppFonts.large,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                          ),
                        )),
                  ),
                 show_size? SizedBox(
                    height: 2.h,
                  ):SizedBox(
                   height: 5.0,
                 ),
                ],
              )),
          SvgPicture.asset(
            "assets/icons/gril.svg",
          ),
        ],
      ),
    );
  }
}

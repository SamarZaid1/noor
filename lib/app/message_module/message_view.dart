import 'package:chips_choice/chips_choice.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noor/app/message_module/message_controller.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';
import 'package:noor/core/contracts/view.dart';


class MessageView extends View1<MessageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.accentColor,
      body: Column(

        children: [
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding:  EdgeInsets.only(right:3.h,left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Notifications",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontFamily: AppFonts.cairo,
                        fontSize: 14.sp,
                        color: ThemeColor.blackColor)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    "assets/icons/user.svg",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h,),
          TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: ThemeColor.primaryColor,
            tabs: [
              Tab(
                text: 'message',
              ),
              Tab(
                text: 'notification',
              )
            ],
            controller: controller.tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        Expanded(child:   TabBarView(
          children: [
            ListView.builder(
              physics: ClampingScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
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
                    child:Column(
                      children: [
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/girl.png"),
                            Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

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
                                  ],
                                ),
                            SizedBox(height: 2.h,),
                            Text("04:32 pm",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                    fontFamily: AppFonts.cairo,
                                    fontSize: 8.sp,
                                    color: ThemeColor.grayColor)),
                            SizedBox(height: 2.h,),
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Text("Congratulations on completing the first lesson, keep up the good work!",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                fontFamily: AppFonts.cairo,
                                fontSize: 8.sp,
                                color: ThemeColor.grayColor)),
                        SizedBox(height: 2.h,),
                      ],
                    ),
                  ),
                ) ;
              },
            ),
            ListView.builder(
              physics: ClampingScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(4.sp),
                  child:  ListTile(
                    leading: Container(
                      width: 35.sp,
                      height: 35.sp,
                      decoration: BoxDecoration(
                        color: ThemeColor.profilecolor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: SvgPicture.asset(
                          "assets/icons/menu.svg",
                          width: 18.sp,
                        ),
                      ),
                    ),
                    title: Text("Congratulations on completing the  ...",
                        style: AppTheme.customHeadline3.copyWith(
                            color: ThemeColor.grayColor,
                            fontFamily: AppFonts.large,
                            fontWeight: FontWeight.w600,
                            fontSize: 10.sp)),
                  ),
                ) ;
              },
            ),
          ],
          controller: controller.tabController,
        ),)

        ],
      ),
    );
  }
}

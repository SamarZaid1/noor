import 'package:chips_choice/chips_choice.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:noor/app/message_module/message_controller.dart';
import 'package:noor/app/news_module/news_view.dart';
import 'package:noor/core/share/empty_widghet.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';
import 'package:noor/core/contracts/view.dart';

class MessageView extends View1<MessageController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 3.h, left: 3.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("التعميمات ",
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
              SizedBox(
                height: 2.h,
              ),
              TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: ThemeColor.primaryColor,
                labelStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontFamily: AppFonts.cairo,
                    fontSize: 11.sp,
                    color: ThemeColor.blackColor),
                unselectedLabelStyle: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(
                        fontFamily: AppFonts.cairo,
                        fontSize: 11.sp,
                        color: ThemeColor.blackColor),
                tabs: [
                  Tab(
                    text: 'الاخبار',
                  ),
                  Tab(
                    text: 'التذكيرات',
                  )
                ],
                // controller: controller.tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    NewsView(),
                    controller.obx(
                        (state) => state!.data!.isEmpty
                            ? Center(child: empty("لايوجد بيانات"))
                            : ListView.builder(
                                physics: ClampingScrollPhysics(),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: state!.data!.length!,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.all(4.sp),
                                    child: ListTile(
                                      leading: Container(
                                        width: 35.sp,
                                        height: 35.sp,
                                        decoration: BoxDecoration(
                                          color: ThemeColor.profilecolor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(14.0),
                                          child: SvgPicture.asset(
                                            "assets/icons/menu.svg",
                                            color:
                                                state!.data![index].color == 0
                                                    ? Colors.red
                                                    : ThemeColor.primaryColor,
                                            width: 18.sp,
                                          ),
                                        ),
                                      ),
                                      title: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              width: 50.w,
                                              child: Text(
                                                  "${state!.data![index].displayName}",
                                                  style: AppTheme
                                                      .customHeadline3
                                                      .copyWith(
                                                          color: ThemeColor
                                                              .grayColor,
                                                          fontFamily:
                                                              AppFonts.large,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 10.sp))),
                                          Text("${state!.data![index].date}",
                                              style: AppTheme.customHeadline3
                                                  .copyWith(
                                                      color:
                                                          ThemeColor.grayColor,
                                                      fontFamily:
                                                          AppFonts.large,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 10.sp))
                                        ],
                                      ),
                                      subtitle: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  "${state!.data![index].stuId!.name}",
                                                  style: AppTheme
                                                      .customHeadline3
                                                      .copyWith(
                                                          color: ThemeColor
                                                              .grayColor,
                                                          fontFamily:
                                                              AppFonts.large,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 8.sp)),
                                              CircleAvatar(
                                                radius: 10.0,
                                                backgroundImage: NetworkImage(
                                                    /*controller
                                                        .userContorller
                                                        .user
                                                        .value
                                                        .data!
                                                        .student!
                                                        .photo??*/
                                                    ""),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30.w,
                                            height: 4.h,
                                            child: Text(
                                                "${state!.data![index].description}",
                                                style: AppTheme.customSubtitle1
                                                    .copyWith(
                                                        color: ThemeColor
                                                            .grayColor,
                                                        fontFamily:
                                                            AppFonts.large,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 8.sp)),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                        onLoading: Center(
                          child: CircularProgressIndicator(),
                        ),
                        onEmpty: Center(child: empty("لايوجد بيانات"))),
                  ],
                  // controller: controller.tabController,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:chips_choice/chips_choice.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:noor/app/message_module/message_controller.dart';
import 'package:noor/app/news_module/news_controller.dart';
import 'package:noor/core/share/empty_widghet.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';
import 'package:noor/core/contracts/view.dart';

class NewsView extends View1<NewsController> {
  final NewsController controller = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    return controller.obx(
        (state) => state!.data!.isEmpty
            ? Center(child: empty("لايوجد بيانات"))
            : ListView.builder(
                physics: ClampingScrollPhysics(),
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: state!.data!.length,
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
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    state!.data![index].image??""),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${state!.data![index].displayName}",
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
                                      child: Text(
                                          "${state!.data![index].subject}",
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
                              SizedBox(
                                height: 2.h,
                              ),
                              Text("${state!.data![index].date}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                          fontFamily: AppFonts.cairo,
                                          fontSize: 8.sp,
                                          color: ThemeColor.grayColor)),
                              SizedBox(
                                height: 2.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text("${state!.data![index].description}",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      fontFamily: AppFonts.cairo,
                                      fontSize: 8.sp,
                                      color: ThemeColor.grayColor)),
                          SizedBox(
                            height: 2.h,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
        onLoading: Center(
          child: CircularProgressIndicator(),
        ),
        onEmpty: Center(child: empty("لايوجد بيانات")));
  }
}

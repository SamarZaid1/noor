import 'package:chips_choice/chips_choice.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:noor/app/event_module/event_controller.dart';
import 'package:noor/core/share/searchWidget.dart';
import 'package:noor/core/share/widget/event_card.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:noor/app/splash_module/spalsh_controller.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';
import 'package:noor/core/contracts/view.dart';


class EventView extends View1<EventController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.accentColor,
      body: ListView(
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
                Text("Events",
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
          SearchWidget().search(
              context: context,
              textFildController: controller.searchTextController,
              onChanga: (v) {
                //controller.search.value = v;
              },
              title: "Find Events"),
          Padding(
            padding: EdgeInsets.only(top: 4.w, right: 4.w, left: 4.w),
            child: Text("Choice events type",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontFamily: AppFonts.cairo,
                    fontSize: 16.sp,
                    color: ThemeColor.blackColor)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<EventController>(
                builder: (s) => ChipsChoice<int>.single(
                      value: controller.tag,
                      onChanged: (val) {
                        controller.tag = val;
                        controller.update();
                      },
                      choiceItems: C2Choice.listFrom<int, String>(
                        source: controller.options,
                        value: (i, v) => i,
                        label: (i, v) => v,
                        tooltip: (i, v) => v,
                      ),
                      choiceCheckmark: true,
                      scrollToSelectedOnChanged: false,
                      choiceStyle: C2ChipStyle.filled(
                        color: Colors.grey.shade200,
                        checkmarkColor: white,
                        // foregroundStyle:bodyText,
                        selectedStyle: const C2ChipStyle(
                          checkmarkColor: white,
                          backgroundColor: bgColor,
                          // foregroundStyle:bntText,
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                      ),
                    )),
          ),
          ListView.builder(
            physics: ClampingScrollPhysics(),
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return eventCard();
            },
          )
        ],
      ),
    );
  }
}

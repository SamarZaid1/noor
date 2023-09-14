import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:noor/app/event_module/event_view.dart';
import 'package:noor/app/home_module/CloeseApp.dart';
import 'package:noor/app/home_module/drawerScreen.dart';
import 'package:noor/app/home_module/home_controller.dart';
import 'package:noor/app/message_module/message_view.dart';
import 'package:noor/app/profile_module/profile_view.dart';
import 'package:noor/core/share/empty_widghet.dart';
import 'package:noor/core/share/loading_widght.dart';
import 'package:noor/core/share/widget/event_card.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as Svg;
import 'package:noor/core/contracts/view.dart';
import '../../core/theme/text_font_family.dart';

class HomeView extends View1<HomeController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: CloseApp(context).onWillPop,
        child: Scaffold(
            body:GetBuilder<HomeController>(
                builder: (s) => listOfScreen[controller.currentIndex.value]),
            bottomNavigationBar: bottomNavigationBar(context)));
  }

  Widget bottomNavigationBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 11.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 30,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: GetBuilder<HomeController>(
          builder: (s) => ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.symmetric(horizontal: size.width * .024),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    controller.currentIndex.value = index;
                    controller.update();
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index == 2
                          ? Container()
                          : AnimatedContainer(
                              duration: Duration(milliseconds: 1500),
                              curve: Curves.fastLinearToSlowEaseIn,
                              margin: EdgeInsets.only(
                                bottom: index == controller.currentIndex.value
                                    ? 0
                                    : size.width * .029,
                                right: size.width * .0422,
                                left: size.width * .0422,
                              ),
                              width: size.width * .116,
                              height: index == controller.currentIndex.value
                                  ? size.width * .014
                                  : 0,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(10),
                                ),
                              ),
                            ),
                      index == 2
                          ? Container(
                              height: 9.h,
                              decoration: BoxDecoration(
                                color: ThemeColor.profilecolor
                                    .withOpacity(0.25), // border color
                                shape: BoxShape.circle,

                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8), // border width
                                child: Container(
                                    // or ClipRRect if you need to clip the content
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ThemeColor.profilecolor,
                                      // inner circle color
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(16), //
                                      child: SvgPicture.asset(
                                        "assets/icons/search.svg",
                                        height: size.width * .060,
                                      ),
                                    ) // inner content
                                    ),
                              ),
                            )
                          : SvgPicture.asset(listOfIcons[index],
                              height: size.width * .055,
                              color: index == controller.currentIndex.value
                                  ? ThemeColor.primaryColor
                                  : ThemeColor.gColor),
                      SizedBox(height: size.width * .03),
                    ],
                  ),
                ),
              )),
    );
  }

  List<String> listOfIcons = [
    "assets/icons/home_fill.svg",
    "assets/icons/event.svg",
    "assets/icons/message.svg",
    "assets/icons/message.svg",
    "assets/icons/profile.svg",
  ];
  List<Widget> listOfScreen = [
    HomeBodyView(),
    EventView(),
    Center(child: Text(""),),
    MessageView(),
    ProfileView(),
  ];

}

class HomeBodyView extends View1<HomeController> {
  @override
  Widget build(BuildContext context) {
    return  SliderDrawer(
      appBar: AppBar(
          backgroundColor: ThemeColor.primaryColor,
          leading: Padding(
            padding: EdgeInsets.all(4.w),
            child: SvgPicture.asset(
              "assets/icons/menu.svg",
              color: ThemeColor.accentColor,
            ),
          )),
      key: controller.sliderKey,
      slideDirection: SlideDirection.LEFT_TO_RIGHT,
      slider: DrawerScreen(controller.userContorller),
      child:  Stack(
        children: [
          HomeListView(context),
          Positioned(
            child: Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // color: ThemeColor.accentColor,
                    image: DecorationImage(
                        image: Svg.Svg(
                          "assets/icons/bg.svg",
                        ),
                        fit: BoxFit.cover)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 4.w, left: 4.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Kristin",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                  fontFamily: AppFonts.cairo,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: ThemeColor.accentColor)),
                          Text("welcome To Noor Collège ",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                  fontFamily: AppFonts.cairo,
                                  fontSize: 9.sp,
                                  color: ThemeColor.accentColor)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.w, left: 8.w),
                      child: SvgPicture.asset(
                        "assets/icons/user.svg",
                      ),
                    ),
                  ],
                )),
          ),
          Positioned(
              top: 40,
              child: InkWell(
                onTap: () async {},
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.15),
                            blurRadius: 30,
                            offset: Offset(0, 10),
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: ThemeColor.gColor),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Todays Lectures",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                      fontFamily: AppFonts.cairo,
                                      fontSize: 9.sp,
                                      color: ThemeColor.fontColor)),
                              Text("My Lectures",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                      fontFamily: AppFonts.cairo,
                                      fontSize: 9.sp,
                                      color: ThemeColor.primaryColor)),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Text("3 lecture",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                      fontFamily: AppFonts.cairo,
                                      fontSize: 12.sp,
                                      color: ThemeColor.blackColor)),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text("/ 15 lectures",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                      fontFamily: AppFonts.cairo,
                                      fontSize: 9.sp,
                                      color: ThemeColor.fontColor)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),

    );
  }

  Padding HomeListView(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160.0),
      child: ListView.builder(
          //  controller: controller,
          itemCount: 5,
          // ignore: missing_return
          itemBuilder: (ctx, listindex) {
            if (listindex == 0) {
              // ignore: missing_return
              return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 195,
                          child: ListView.separated(
                            padding:
                                const EdgeInsets.only(right: 15.0, left: 15.0),
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: ThemeColor.cardsColor),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: 8.w, left: 8.w),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Todays News",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1!
                                                    .copyWith(
                                                        fontFamily:
                                                            AppFonts.cairo,
                                                        fontSize: 12.sp,
                                                        color: ThemeColor
                                                            .blackColor)),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            SizedBox(
                                                width: 30.w,
                                                child: Text(
                                                    "Celebration of outstanding students during the first semester",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1!
                                                        .copyWith(
                                                            fontFamily:
                                                                AppFonts.cairo,
                                                            fontSize: 9.sp,
                                                            color: ThemeColor
                                                                .fontColor))),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            SizedBox(
                                              width: 30.w,
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                ThemeColor
                                                                    .yellwColor),
                                                    shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: ThemeColor
                                                                    .yellwColor),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .vertical(
                                                              bottom: Radius
                                                                  .circular(10),
                                                              top: Radius
                                                                  .circular(10),
                                                            ))),
                                                  ),
                                                  onPressed: () {},
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(3.w),
                                                    child: Text(
                                                      'Get Started',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline1!
                                                          .copyWith(
                                                              fontFamily:
                                                                  AppFonts
                                                                      .large,
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  )),
                                            ),
                                          ],
                                        )),
                                    SvgPicture.asset(
                                      "assets/icons/gril.svg",
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(
                              width: 5.0,
                            ),
                          )),
                    ],
                  ));
            } else if (listindex == 1) {
              return Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: buildHomeCard(
                        "All Lectures", "My Lectures", 2, context)),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 15.0, left: 15.0, bottom: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: ThemeColor.hintColor),
                    child: Padding(
                        padding: EdgeInsets.only(right: 8.w, left: 8.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 1.h,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Packaging Design",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(
                                                fontFamily: AppFonts.cairo,
                                                fontSize: 10.sp,
                                                color: ThemeColor.blackColor)),
                                    Row(
                                      children: [
                                        Text("40 ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(
                                                    fontFamily: AppFonts.cairo,
                                                    fontSize: 9.sp,
                                                    color:
                                                        ThemeColor.blackColor)),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text("/ 48 lectures",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(
                                                    fontFamily: AppFonts.cairo,
                                                    fontSize: 9.sp,
                                                    color:
                                                        ThemeColor.fontColor)),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Packaging Design",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(
                                                fontFamily: AppFonts.cairo,
                                                fontSize: 10.sp,
                                                color: ThemeColor.blackColor)),
                                    Row(
                                      children: [
                                        Text("40 ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(
                                                    fontFamily: AppFonts.cairo,
                                                    fontSize: 9.sp,
                                                    color:
                                                        ThemeColor.blackColor)),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text("/ 48 lectures",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(
                                                    fontFamily: AppFonts.cairo,
                                                    fontSize: 9.sp,
                                                    color:
                                                        ThemeColor.fontColor)),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                )
              ]);
            } else if (listindex == 2) {
              return Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: ThemeColor.lightpinkColor),
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
                                    height: 4.h,
                                  ),
                                  Text("Official announcement",
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
                                          "Off-line exchange of learning experiences",
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
                          SvgPicture.asset(
                            "assets/icons/students.svg",
                          ),
                        ],
                      ),
                    ))
              ]);
            } else if (listindex == 3) {
              return Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: buildHomeCard("View All", "Last News", 3, context)),
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
              ]);
            } else {
              return Container();
            }
          }),
    );
  }

  buildHomeCard(String icon, String title, int all_value, context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Text(title,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontFamily: AppFonts.cairo,
                      fontSize: 9.sp,
                      color: ThemeColor.fontColor)),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(icon),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 10.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



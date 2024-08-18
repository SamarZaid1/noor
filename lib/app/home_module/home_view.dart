import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:noor/app/event_module/event_view.dart';
import 'package:noor/app/home_module/CloeseApp.dart';
import 'package:noor/app/home_module/drawerScreen.dart';
import 'package:noor/app/home_module/home_controller.dart';
import 'package:noor/app/message_module/message_view.dart';
import 'package:noor/app/news_module/news_view.dart';
import 'package:noor/app/profile_module/profile_view.dart';
import 'package:noor/core/share/empty_widghet.dart';
import 'package:noor/core/share/loading_widght.dart';
import 'package:noor/core/share/widget/event_card.dart';
import 'package:noor/core/share/widget/event_widght.dart';
import 'package:noor/core/share/widget/subject_widght.dart';
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
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              body: GetBuilder<HomeController>(
                  builder: (s) => listOfScreen[controller.currentIndex.value]),
              bottomNavigationBar: bottomNavigationBar(context)),
        ));
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
                                      child: Image.asset(
                                        "assets/logo.png",
                                      )
                                      /*SvgPicture.asset(
                                        "assets/icons/search.svg",
                                        height: size.width * .060,
                                      )*/
                                      ,
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
    EventView(), // EventView(),
    Center(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 4.h,),
          Image.asset(
            "assets/logo.png",
            height: 200.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
                "جامعة النور الجامعة واحدة من الجامعات العراقية المتخصصة في مجال العلوم الطبية وتقنياتها حيث تحرص على اداء اسرتها العلمية في مجالات البحث العلمي وتحفزهم على مواكبة احدث الكشوفات العلمية والحرص على الرصانة وذلك عبر تعزيز التعاون البحثي المشترك مع الجامعات والمؤسسات والشركات لتقديم عمل بحثي يسهم في تقديم حلول علمية لتحديات المجتمع.وكذلك تحفز طلبتها على التعلم والالمام بالمواضيع"),
          ),
        ],
      ),
    )),
    MessageView(),
    ProfileView(),
  ];
}

class HomeBodyView extends View1<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SliderDrawer(
          appBar: AppBar(
              backgroundColor: ThemeColor.editTextColor,
              leading: Padding(
                padding: EdgeInsets.all(4.w),
                child: SvgPicture.asset(
                  "assets/icons/menu.svg",
                  color: ThemeColor.accentColor,
                ),
              )),
          key: controller.sliderKey,
          slideDirection: SlideDirection.RIGHT_TO_LEFT,
          slider: DrawerScreen(controller.userContorller),
          child: Stack(
            children: [
              HomeListView(context),
              Positioned(
                child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: ThemeColor.editTextColor,
                        image: DecorationImage(
                            image: Svg.Svg(
                              "assets/icons/bg.svg",
                            ),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 4.w, left: 4.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "مرحبا بك في  ${controller.userContorller.user.value.data!.student == null ? "" : controller.userContorller.user.value.data!.student!.schoolId!.name} ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            fontFamily: AppFonts.cairo,
                                            fontSize: 10.sp,
                                            color: ThemeColor.accentColor)),
                                Text(
                                    "${controller.userContorller.user.value.data!.name}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            fontFamily: AppFonts.cairo,
                                            fontSize: 8.sp,
                                            color: ThemeColor.accentColor)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5.w, left: 5.w),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(controller
                                          .userContorller
                                          .user
                                          .value
                                          .data!
                                          .student ==
                                      null
                                  ? ""
                                  : controller.userContorller.user.value.data!
                                      .student!.photo!),
                            ) /*SvgPicture.asset(
                              "assets/icons/user.svg",
                            )*/
                            ,
                          ),
                        ],
                      ),
                    )),
              ),
              Positioned(
                  top: 50,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("بيانات الطالب",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontFamily: AppFonts.cairo,
                                              fontSize: 9.sp,
                                              color: ThemeColor.fontColor)),
                                  Text(
                                      " # ${controller.userContorller.user.value.data!.id}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontFamily: AppFonts.cairo,
                                              fontSize: 10.sp,
                                              color: ThemeColor.primaryColor)),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                           /*   Column(
                                children: [
                                  Text(
                                      "  السنة الدراسية  ${controller.userContorller.user.value.data!.student == null ? "" : controller.userContorller.user.value.data!.student!.acadamicYear} ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              fontFamily: AppFonts.cairo,
                                              fontSize: 11.sp,
                                              color: ThemeColor.blackColor)),
                                  Text(
                                      "${controller.userContorller.user.value.data!.student == null ? "" : controller.userContorller.user.value.data!.student!.divisionId!.name}/"
                                      " ${controller.userContorller.user.value.data!.student == null ? "" : controller.userContorller.user.value.data!.student!.schoolId!.name}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              fontFamily: AppFonts.cairo,
                                              fontSize: 7.sp,
                                              color: ThemeColor.fontColor)),
                                ],
                              )*/
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ));
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
                          height: 150,
                          child: controller.eventController.obx(
                              (state) => state!.data!.isEmpty
                                  ? Center(child: empty("لايوجد بيانات"))
                                  : ListView.separated(
                                      padding: const EdgeInsets.only(
                                          right: 15.0, left: 15.0),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: state!.data!.length,
                                      itemBuilder: (context, index) {
                                        return EventWidget(
                                          title:
                                              state!.data![index].displayName ??
                                                  "null",
                                          sub_title:
                                              state!.data![index].description ??
                                                  "null",
                                          show_size: false,
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        width: 5.0,
                                      ),
                                    ),
                              onLoading: Center(
                                child: CircularProgressIndicator(),
                              ),
                              onEmpty: Center(child: empty("لايوجد بيانات")))),
                    ],
                  ));
            } else if (listindex == 1) {
              return Column(children: <Widget>[
                buildHomeCard("الكل", "المواد الدراسية", 2, context),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: controller.subjectController.obx(
                        (state) => state!.data!.isEmpty
                            ? Center(child: empty("لايوجد بيانات"))
                            : Padding(
                                padding: const EdgeInsets.only(
                                    right: 15.0, left: 15.0, bottom: 20.0),
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: ThemeColor.hintColor),
                                  child: ListView.builder(
                                      physics: ClampingScrollPhysics(),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: state!.data!.length!,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                            padding: EdgeInsets.only(
                                                right: 8.w,
                                                left: 8.w,
                                                top: 2.h),
                                            child: SubjectWidget(
                                              subject_name: state!.data![index]
                                                      .displayName ??
                                                  "",
                                              maximum_marks: state!.data![index]
                                                      .maximumMarks ??
                                                  0,
                                              minimum_marks: state!.data![index]
                                                      .minimumMarks ??
                                                  0,
                                            ));
                                      }),
                                ),
                              ),
                        onLoading: Center(
                          child: CircularProgressIndicator(),
                        ),
                        onEmpty: Center(child: empty("لايوجد بيانات")))),
              ]);
            } else if (listindex == 2) {
              return Column(children: <Widget>[
                /* Padding(
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
                    ))*/
              ]);
            } else if (listindex == 3) {
              return Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: buildHomeCard("الكل", "اخر الاخبار", 3, context)),
                controller.newsController.obx(
                    (state) => state!.data!.isEmpty
                        ? Center(child: empty("لايوجد بيانات"))
                        : ListView.builder(
                            physics: ClampingScrollPhysics(),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: state!.data!.length!,
                            itemBuilder: (context, index) {
                              return NewsCard(
                                title: state!.data![index].displayName ?? "",
                                date: state!.data![index].date ?? "",
                              );
                            },
                          ),
                    onLoading: Center(
                      child: CircularProgressIndicator(),
                    ),
                    onEmpty: Center(child: empty("لايوجد بيانات")))
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
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
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

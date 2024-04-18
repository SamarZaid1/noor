import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';

import '../../../data/student_fee.dart';

class FeesCard extends StatelessWidget {
  Data data;
  FeesCard(this.data);
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 230,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("    ${data.displayName}",
                                  style: AppTheme.customHeadline3.copyWith(
                                      color: ThemeColor.primaryColor,
                                      fontFamily: AppFonts.large,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.sp)),
                              Text("    ${data.sequence}",
                                  style: AppTheme.customHeadline3.copyWith(
                                      color: ThemeColor.primaryColor,
                                      fontFamily: AppFonts.large,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.sp)),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("الاجمالي      ${data.total} ${data.currencySymbol}",
                          style: AppTheme.customHeadline3.copyWith(
                              color: ThemeColor.primaryColor,
                              fontFamily: AppFonts.large,
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                          "الاجمالي المتبقي      ${data.dueAmount} ${data.currencySymbol}",
                          style: AppTheme.customHeadline3.copyWith(
                              color: ThemeColor.primaryColor,
                              fontFamily: AppFonts.large,
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                          "الاجمالي المدفوع      ${data.paidDone} ${data.currencySymbol}",
                          style: AppTheme.customHeadline3.copyWith(
                              color: ThemeColor.primaryColor,
                              fontFamily: AppFonts.large,
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("نظام تقسيط ؟      ${data.useInstallment} ",
                          style: AppTheme.customHeadline3.copyWith(
                              color: ThemeColor.grayColor,
                              fontFamily: AppFonts.large,
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp)),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "تقسيم الاقساط",
                    )),
                collapsed: Text(
                  "",
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    for (var c in data.installments!)
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("تاريخ الاستحقاق ${c.paymentDate}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.blackColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 8.sp)),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text("اجمالي القسط${c.amount}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.grayColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10.sp)),
                                  Text("حالة القسط ${c.state}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.grayColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10.sp)),
                                  /*Text("المبلغ المدفوع ${c.paidDone}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.grayColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10.sp)),*/
                                ],
                              ))),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

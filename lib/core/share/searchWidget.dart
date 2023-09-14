import 'package:noor/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class SearchWidget {
  Widget search(
      {BuildContext? context, onChanga, textFildController, String? title}) {
    return Padding(
      padding: EdgeInsets.all(4.w),
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Container(
                height: 30.sp,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ThemeColor.greyColor.withAlpha(20),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: FocusScope(
                    child: Focus(
                        onFocusChange: (focus) {},
                        child: TextField(
                          controller: textFildController,
                          onChanged: onChanga,
                          style: Theme.of(context!)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                              fontSize: 8.sp,
                              color: ThemeColor.grayColor),
                          readOnly: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: title!,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                fontSize: 8.sp,
                                color: ThemeColor.grayColor),
                            contentPadding: EdgeInsets.only(
                                left: 2.w, right: 2.w, top: 1.h),
                            prefixIcon: Container(
                              width: 10.0,
                              child: Icon(
                                Icons.search,
                                color: ThemeColor.grayColor,
                              ),
                            ),
                          ),
                        ))),
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  height: 30.sp,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: ThemeColor.grayColor,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: SvgPicture.asset(
                    "assets/icons/filter.svg",
                    color: ThemeColor.accentColor,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(BuildContext context, String titleText) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 15.0),
      child: Row(
        children: [
          Text(
            titleText,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 10.sp,
                ),
          ),
          SizedBox(
            width: 2.w,
          ),
          Expanded(
              child: Divider(
            height: 1.0,
            color: ThemeColor.grayColor,
          ))
        ],
      ),
    );
  }
}

ListTile buildListTileDrawer(String title, var icon, var onTap) {
  return ListTile(
    title: Text(
      title,
    ),
    leading: Icon(
      icon,
    ),
    onTap: onTap,
  );
}

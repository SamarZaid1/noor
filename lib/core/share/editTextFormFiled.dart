import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../theme/colors.dart';
import '../theme/text_font_family.dart';

class CustomEditTextFormFiled {
  Widget MyInputField({
    BuildContext? context,
    String initialValue = "",
    Function(void)? onSaved,
    Function(void)? onChang,
    controller,
    String? hint,
    String? label,
    bool hide = false,
    Icon? prefixIcon,
    Widget? suffixIcon,
    bool enabled = true,
    maxlength,
    onTap,
    errortext,
    readOnly = false,
    Color lableolor = Colors.black54,
    Color hintColor = Colors.black,
    maxLine = 1,
    intiValue,
    inputFormatters,
    TextInputType textInputType = TextInputType.text,
    Function(bool)? onSuffixIconClick,
    final validatorobject,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  }) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.h, right: 1.w, left: 1.w, top: 1.h),
        child: TextFormField(
          initialValue: intiValue,
          controller: controller,
          obscureText: hide,
          // initialValue: initialValue,
          maxLength: maxlength,
          maxLines: maxLine,
          style: Theme.of(context!).textTheme.subtitle2!.copyWith(
                fontSize: 9.sp,
                color: ThemeColor.editTextColor,
              ),
          onTap: onTap,
          readOnly: readOnly,
          onSaved: onSaved,
          onChanged: onChang,
          enabled: enabled,
          inputFormatters: inputFormatters,
          autovalidateMode: autovalidateMode,
          decoration: new InputDecoration(
            errorText: errortext,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            contentPadding:
                EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
            border: InputBorder.none,
            focusedErrorBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: ThemeColor.hintColor, width: 0.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: ThemeColor.primaryColor, width: 0.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: ThemeColor.hintColor, width: 0.5),
            ),
            hoverColor: ThemeColor.grayColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: ThemeColor.hintColor, width: 0.5),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: ThemeColor.hintColor, width: 0.5),
            ),
            hintText: hint,
            labelText: label,
            labelStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontSize: 9.sp,
                  color: ThemeColor.grayColor,
                ),
            hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 8.sp,
                  color: ThemeColor.grayColor,
                ),
          ),
          validator: validatorobject,
          keyboardType: textInputType,

        ),
      ),
    );
  }
}

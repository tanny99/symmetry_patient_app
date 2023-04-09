import 'package:flutter/material.dart';

Color white1 = const Color(0xFFFFFFFF);
Color white2 = const Color(0xFFD9D9D9);
Color white3 = const Color(0xFFF7F6F9);
Color white4 = const Color(0xFFDBDFE4);
Color grey1 = const Color(0xFF5C6977);
Color grey2 = const Color(0xFF555555);
Color grey3 = const Color(0xFF959595);
Color grey4 = const Color(0xFF9C9C9C);
Color grey5 = const Color(0xFF5F5F5F);
Color grey6 = const Color(0xFF525252);
Color grey7 = const Color(0xFF8C8C8C);
Color grey8 = const Color(0xFFBABABA);
Color grey9 = const Color(0xFFCCCCCC);
Color grey10 = const Color(0xFFA6A6A6);
Color grey11 = const Color(0xFF919294);
Color grey12 = const Color(0xFF767779);
Color grey13 = const Color(0xFF9E9E9E);
Color blue1 = const Color(0xFF3668AD);
Color blue2 = const Color(0xFF30ADBF);
Color blue3 = const Color(0xFF3080BE);
Color blue4 = const Color(0xFF3181BE);
Color blue5 = const Color(0xFF2AA9C2);
Color blue6 = const Color(0xFF4BBEB0);
Color blue7 = const Color(0xFF2AA7C0);
Color blue8 = const Color(0xFF3C2AA9);
Color blue9 = const Color(0xFF2AACBF);
Color green1 = const Color(0xFF206277);
Color green2 = const Color(0xFF1B9C38);
Color black1 = const Color(0xFF262626);
Color black2 = const Color(0xFF333333);
Color black3 = const Color(0xFF4C4C4C);
Color black4 = const Color(0xFF424242);
Color yellow1 = const Color(0xFFE4A13D);

customDropDownInputDecoration() {
  return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide: BorderSide(
          color: grey10,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide: BorderSide(
          color: grey10,
        ),
      ),
      filled: true,
      fillColor: white1);
}

customInputDecoration({required String hintText, Widget? suffixIcon}) {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: blue1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: blue1,
      ),
    ),
    filled: true,
    hintStyle:
        TextStyle(color: grey4, fontSize: 16, fontWeight: FontWeight.w400),
    labelText: hintText,
    labelStyle: const TextStyle(fontSize: 16),
    fillColor: white1,
    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
    suffixIcon: suffixIcon,
  );
}

class Config {
  BuildContext context;
  Config(this.context);
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

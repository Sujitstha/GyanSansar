// ignore_for_file: file_names, prefer_const_constructors, unnecessary_string_interpolations, unused_import
import 'package:flutter/material.dart';
import 'package:gyansansar/const/colors.dart';

Widget myButton (BuildContext context, double fs,double width, double height, String text, String route){
  return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        color: primaryColor,
        textColor: textColor,
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      child: Text("$text",
      style: TextStyle(fontSize: fs),
      ),
      ),
    );
}

Widget readmorebtn (BuildContext context, double fs,double width, double height, String text, String route){
  return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        color: primaryColor,
        textColor: textColor,
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      child: Text("$text",
      style: TextStyle(fontSize: fs),
      ),
      ),
    );
}

Widget myButton2 (BuildContext context, double fs,double width, double height, String text, String route){
  return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        color: Colors.white,
        textColor: primaryColor,
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      child: Text("$text",
      style: TextStyle(fontSize: fs),
      ),
      ),
    );
}

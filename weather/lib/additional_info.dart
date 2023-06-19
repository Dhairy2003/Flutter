import 'package:flutter/material.dart';
TextStyle titlefont = const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
Widget additionalInofrmation(String wind, String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(

      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Humidity", style: titlefont),
                  // Text
                  SizedBox(
                    height: 18.0,
                  ),
                  Text("feels_like", style: titlefont),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$humidity", style: titlefont),
                  // Text
                  SizedBox(
                    height: 18.0,
                  ),
                  Text("$feels_like", style: titlefont),
                ]),

            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Wind", style: titlefont),
                  // Text
                  SizedBox(
                    height: 18.0,
                  ),
                  Text("Pressure", style: titlefont),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$wind", style: titlefont),
                  // Text
                  SizedBox(
                    height: 18.0,
                  ),
                  Text("$pressure", style: titlefont),
                ]),
          ],
        ),
      ],
    ),
  ); // Column
}// Container
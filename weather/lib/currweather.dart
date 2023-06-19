import 'package:flutter/material.dart';
import 'package:weather/additional_info.dart';
import "package:weather/additional_info.dart";

Widget currWeather (IconData icon, String temp, String location){


return Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 10.0,
      ),
      Icon(
        icon,
        color: Colors.orange ,
        size: 64,
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        "$temp",
        style: TextStyle(fontSize: 28),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        "$location",
        style: TextStyle(fontSize: 40),
      ),
    ],
  ),
);

}
import 'package:flutter/material.dart';



TableRow row_returner(String s1, String s2, String s3){
  return TableRow(


    children: [
      TableCell(
        child: Center(
          child: Text(s1),
        ),
      ),
      TableCell(
        child: Center(
          child: Text(s2),
        ),
      ),
      TableCell(
        child: Center(
          child: Text(s3),
        ),
      ),
    ],
  );

}

TableRow space(){
  return TableRow(
    children:[ SizedBox(height: 35,),
      SizedBox(height: 35,),
      SizedBox(height: 35,)]
  );}
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final IconData i;
  bool isSelected;
  Product(
    {
    this.isSelected = false,
    required this.id,
    required this.i,
    required this.title,
  });
}

List<Product> products = [
  Product(
      id:1,
      title: "Services",
      i: Icons.miscellaneous_services,),
  Product(
    id:2,
      title: "Education",
      i: Icons.menu_book,
   ),
  Product(
    id:3,
      title: "Buy & Sell",
      i: Icons.real_estate_agent_outlined,
  ),
  Product(
    id:4,
      title: "Sports",
      i: Icons.sports_baseball_outlined,),
  Product(
    id:5,
      title: "Arts",
      i: Icons.color_lens_outlined,
      ),
  Product(
    id:6,
    title: "IT",
    i: Icons.devices_outlined,

  ),
  Product(
    id:7,
    title: "Work",
    i:Icons.work_outline ,

  ),
  Product(
    id:8,
    title: "Technology",
    i: Icons.insights_outlined,

  ),
];

List<Product> filterproducts = [
  Product(
    id:1,
    title: "Coding",
    i: Icons.code,),
  Product(
    id:2,
    title: "Graphic Design",
    i: Icons.design_services,
  ),
  Product(
    id:3,
    title: "Dance",
    i: Icons.music_note,
  ),
  Product(
    id:4,
    title: "Drawing",
    i: Icons.edit,),
  Product(
    id:5,
    title: "Coding",
    i: Icons.code,),
  Product(
    id:6,
    title: "Graphic Design",
    i: Icons.design_services,
  ),
  Product(
    id:7,
    title: "Dance",
    i: Icons.music_note,
  ),
  Product(
    id:8,
    title: "Drawing",
    i: Icons.edit,),


];
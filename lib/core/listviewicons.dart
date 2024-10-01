import 'package:flutter/material.dart';

class Listviewicons extends StatelessWidget {
  Listviewicons({super.key});
  List image = [
    'assets/iconshome/print_cubes_scheme_modular_color_edit_products_miscellaneous_icon_251257.png',
    'assets/iconshome/360_F_774390478_WWNfdWJ3G5bPDQBjoxNHtYc5pb0T6SRQ.jpg',
    'assets/iconshome/images (2).png',
    'assets/iconshome/png-clipart-logistics-computer-icons-building-company-logistic-icon-miscellaneous-angle-thumbnail.png',
    'assets/iconshome/company-icon-for-your-website-mobile-presentation-and-logo-design-free-vector.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          width: 50,
          height: 100,
          child: Image.asset(image[index], fit: BoxFit.cover)),
      itemCount: image.length,
      scrollDirection: Axis.horizontal,
    );
  }
}

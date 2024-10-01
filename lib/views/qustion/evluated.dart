import 'package:flutter/material.dart';

class Evluated extends StatelessWidget {
   Evluated({super.key,
    required this.text,
    required this.colorback,
    required this.Color,});
  String text;
  var colorback;
  var Color;
 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      text,
                      style: TextStyle(color: Color),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorback,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                );
  }
}
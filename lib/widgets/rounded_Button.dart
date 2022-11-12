import 'package:flutter/material.dart';

class rounded_button extends StatelessWidget {
  late String title;
  rounded_button(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 280.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xff0075FF),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}
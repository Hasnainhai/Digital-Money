import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  String img;
  String title;
  Avatar(this.img, this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(23.0),
          child: Container(
            height: 46.0,
            width: 46.0,
            child: Image.asset(img),
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14.0,
            fontFamily: 'Inter',
            color: Color(0xff848484),
          ),
        ),
      ],
    );
  }
}
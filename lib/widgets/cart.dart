import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  String img;
  String tx1;
  String tx2;
  String tx3;
  String tx4;

  Cart(this.img, this.tx1, this.tx2, this.tx3, this.tx4);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 38.0,
          width: 38.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 14.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tx1,
              style: const TextStyle(
                fontSize: 14.0,
                fontFamily: 'Inter',
                color: Color(0xff3C3C3C),
              ),
            ),
            Text(
              tx2,
              style: const TextStyle(
                fontSize: 12.0,
                color: Color(0xff676767),
                fontFamily: 'Inter',
              ),
            ),
          ],
        ),
        const SizedBox(width: 145.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              tx3,
              style: const TextStyle(
                fontSize: 14.0,
                fontFamily: 'Inter',
                color: Color(0xff34AA44),
              ),
            ),
            Text(
              tx4,
              style: const TextStyle(
                fontSize: 12.0,
                color: Color(0xff676767),
                fontFamily: 'Inter',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
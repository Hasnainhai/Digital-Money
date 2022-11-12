import 'package:flutter/material.dart';

class price extends StatelessWidget {
  String prce;
  price(this.prce);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 52.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.grey.shade100,
      ),
      child: Center(
        child: Text(
          prce,
          style: const TextStyle(
            fontSize: 12.0,
            color: Color(0xff848484),
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}
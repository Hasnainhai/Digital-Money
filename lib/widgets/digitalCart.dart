import 'package:flutter/material.dart';

class digatalCart extends StatelessWidget {
  String img;
  digatalCart( this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59.0,
      width: 75.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.contain,
        ),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0.5,
            blurRadius: 1.0,
            color: Color(0xff9C9C9C),
          ),
        ],
      ),
    );
  }
}

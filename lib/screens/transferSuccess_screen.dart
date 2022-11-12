import 'package:flutter/material.dart';
import '../widgets/rounded_Button.dart';

class TransferSuccess extends StatelessWidget {
  const TransferSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(129.0),
                  child: Container(
                    height: 258.0,
                    width: 258.0,
                    color: Color(0xff5D5FEF),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(57.0),
                        child: Container(
                          height: 114.0,
                          width: 114.0,
                          color: Colors.white,
                          child: const Icon(
                            Icons.done,
                            color: Color(0xff5D5FEF),
                            size: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60.0),
            const Text(
              'Transfer successful',
              style: TextStyle(
                fontSize: 24.0,
                fontFamily: 'Poppins',
                color: Color(0xff3C3C3C),
              ),
            ),
            const SizedBox(height: 22.0),
            const Text(
              '\$50,000 is on its way to Ahmed',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Inter',
                color: Color(0xff3C3C3C),
              ),
            ),
            const SizedBox(height: 74.0),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/Home');
              },
              child: rounded_button('HOME'),
            )
          ],
        ),
      ),
    );
  }
}

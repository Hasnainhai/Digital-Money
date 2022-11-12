import 'package:flutter/material.dart';
import '../widgets/rounded_Button.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/transferMoney');
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff9098B1),
          ),
        ),
        title:const Text(
          'Send Money',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontFamily: 'Inter',
          ),
        ),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 100.0),
            ClipRRect(
              child: Container(
                height: 150.0,
                width: 150.0,
                child: Image.asset('images/profile.png'),
              ),
            ),
            const SizedBox(height: 18.0),
            const Text(
              'Ahmed',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Inter',
                color: Color(0xff092C4C),
              ),
            ),
            const SizedBox(height: 100.0),
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 0.5,
                    blurRadius: 2.0,
                    color: Colors.white,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Send Money',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xff092C4C),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Text(
                    '\$24,809',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xff092C4C),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/transferSucess');
                    },
                 child:rounded_button('Continue'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

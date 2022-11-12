import 'package:flutter/material.dart';
import '../widgets/rounded_Button.dart';

class OTP1 extends StatefulWidget {
  const OTP1({Key? key}) : super(key: key);

  @override

  State<OTP1> createState() => _OTP1State();
}

class _OTP1State extends State<OTP1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child:ListView(
          children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100.0),
              Center(
                child: Container(
                  width: 223,
                  height: 233,
                  color: Colors.transparent,
                  child: Image.asset(
                    'images/OTP1.png',
                  ),
                ),
              ),
              const SizedBox(height: 60.0),
              Container(
                child: const Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24.0,
                    color: Color(0xff3A3A3A),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                child: const Text(
                  'We will send you a one-time password',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14.0,
                    color: Color(0xff3A3A3A),
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'to this mobile number',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14.0,
                    color: Color(0xff3A3A3A),
                  ),
                ),
              ),
              const SizedBox(height: 34.0),
              Container(
                padding: const EdgeInsets.fromLTRB(90.0, 0.0, 90.0, 0.0),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: ' +92 3554337111',
                    hintStyle: TextStyle(
                      color: Color(0xff3A3A3A),
                      fontSize: 10.0,
                    ),
                    labelText: 'Enter Mobile Number',
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Inter',
                      color: Color(0xffB9B9B9),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  maxLength: 20,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 39.0),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/otp2');
                },
             
           child:  rounded_button('Get OTP'),
            // Container(
            //     padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            //     height: 50.0,
            //     child: Material(
            //       borderRadius: BorderRadius.circular(20.0),
            //       shadowColor: Colors.greenAccent,
            //       color: Colors.green,
            //       elevation: 7.0,
            //       child: GestureDetector(
            //         child: const Center(
            //           // ignore: unnecessary_const
            //           child: const Text(
            //             'Get OTP',
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontFamily: 'Poppins',
            //               fontWeight: FontWeight.bold,
            //               fontSize: 17.0,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
               ),
               SizedBox(height: 100.0),
            ],
          ),
          ],
        ),
      ),
    );
  }
}

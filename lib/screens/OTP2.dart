import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import '../widgets/rounded_Button.dart';

class MyOTP extends StatelessWidget {
  const MyOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.green),
          onPressed: () {},
        ),
        title: const Text(
          'OTP Verification',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.0,
            color: Color(0xff3A3A3A),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
            child: Container(
              child: const Text(
                'Please Enter OTP Verification',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff3A3A3A),
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 98.0, right: 98.0, top: 55.0),
            child: Row(
              children: [
                Container(
                  child: const Text(
                    'Resend OTP Again in?',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xff3A3A3A),
                      fontSize: 12.0,
                    ),
                  ),
                ),
                const SizedBox(width: 2.0),
                const Text(
                  '00:30',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Colors.red,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0),
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PinEntryTextField(
                  showFieldAsBox: true,
                  onSubmit: (String Pin) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Pin'),
                          content: Text('Pin Entered is $Pin'),
                        );
                      },
                      barrierColor: Colors.white,
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              child: const Text(
                'Resend OTP',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 70, top: 55.0),
            child: Container(
              height: 5.0,
              width: 134.0,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100.0)),
            ),
          ),
          const SizedBox(height: 50.0),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/Home');
            },
            child: rounded_button('Continue'),
          ),
        ],
      ),
    );
  }
}

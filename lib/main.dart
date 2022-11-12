import 'package:flutter/material.dart';
import 'package:money_transfer/screens/OTP2.dart';
import './screens/sendMoney.dart';
import './screens/transferSuccess_screen.dart';
import './screens/profile_screen.dart';
import './screens/login_Screen.dart';
import './widgets/rounded_Button.dart';
import './screens/signIn_Screen.dart';
import './screens/OTP1.dart';
import './screens/home_screen.dart';
import './screens/withdraw_screen.dart';
import './screens/transferRequest_screen.dart';
import './screens/transferSend_screen.dart';
import './screens/TranferMoney_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/Login': (BuildContext context) => const Login_screen(),
        '/signIn': (BuildContext context) => signIn_Screen(),
        '/myOTP': (BuildContext context) => const OTP1(),
        '/Home': (BuildContext context) => const HomeScreen(),
        '/withdraw': (BuildContext context) => const withDrawScreen(),
        '/transferReq': (BuildContext context) => const transferRequest(),
        '/transferSent': (BuildContext context) => transferSent(),
        '/profile': (BuildContext context) => const profileScreen(),
        '/sendMoney': (BuildContext context) => const SendMoney(),
        '/transferSucess': (BuildContext context) => const TransferSuccess(),
        '/transferMoney': (BuildContext context) => const TrasferMoney(),
        '/otp2': (BuildContext context) => const MyOTP(),
      },
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 100.0),
                  Image.asset('images/img1.png'),
                  const SizedBox(height: 52.0),
                  const Text(
                    'Let\'s start!',
                    style: TextStyle(
                      fontSize: 34.0,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  const Text(
                    'Welcome to Mobile Wallet! App which',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Inter',
                      color: Color(0xff8E8E93),
                    ),
                  ),
                  const Text(
                    'helps you to save money and track',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Inter',
                      color: Color(0xff8E8E93),
                    ),
                  ),
                  const Text(
                    'your spendings',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Inter',
                      color: Color(0xff8E8E93),
                    ),
                  ),
                  const SizedBox(height: 46.0),
                  rounded_button('How it works?'),
                  const SizedBox(height: 50.0),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Login');
                    },
                    child: const Text(
                      'Skip Tutorial',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Inter',
                        color: Color(0xff007AFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

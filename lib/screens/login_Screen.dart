// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Login_screen extends StatelessWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 160.0,
                      width: double.infinity,
                      color: const Color(0xff5D5FEF),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 100.0,
                        left: 120.0,
                        right: 120.0,
                      ),
                      child: Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: const DecorationImage(
                            image: AssetImage('images/img2.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 34.0,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.2,
                              blurRadius: 2.0,
                        ),
                        ],
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Image.asset('images/iphone.png'),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.2,
                              blurRadius: 2.0),
                        ],
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                          child: Image.asset('images/google.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.2,
                            blurRadius: 2.0,
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset('images/fb.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 26.0),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Username or Email',
                          hintStyle: const TextStyle(
                            color: Color(0xff676767),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color(0xff626262),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Color(0xff676767),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xff626262),
                          ),
                        ),
                        obscureText: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 195.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/myOTP');
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xff5D5FEF),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/signIn');
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Color(0xff3C3C3C),
                                fontFamily: 'Inter',
                              ),
                            ),
                          ),
                          Container(
                            height: 51.0,
                            width: 51.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26.0),
                              color: Color(0xff5D5FEF),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.blue,
                                  blurRadius: 8.0,
                                  spreadRadius: 0.1,
                                ),
                              ],
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed:  () {
                                  Navigator.of(context).pushNamed('/Home');
                                },
                                icon:const Icon(
                                   Icons.arrow_forward,
                                    color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50.0),
                      Container(
                        height: 43.0,
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'By continuing you are indicating that you agree to the',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Inter',
                                color: Color(0xffAEAEB2),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Terms',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Inter',
                                    color: Color(0xff007AFF),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  'and',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Inter',
                                    color: Color(0xffAEAEB2),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  'Privacy Policy.',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Inter',
                                    color: Color(0xff007AFF),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100.0),
                Container(
                  height: 5.0,
                  width: 100.0,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/rounded_Button.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/Home');
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff9098B1),
          ),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 24.0,
            color: Color(0xff3C3C3C),
            fontFamily: 'Inter',
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        child: Image.asset('images/profile.png'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 46.0),
                const Text(
                  'Full Name',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Inter',
                      color: Color(0xff676767)),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Ibrahim Ahmed',
                    hintStyle: const TextStyle(
                        color: Color(0xff676767), fontSize: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Inter',
                      color: Color(0xff676767)),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Ibrahim123@gmail.com',
                    hintStyle: const TextStyle(
                        color: Color(0xff676767), fontSize: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Account Number ',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Inter',
                      color: Color(0xff676767)),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: '259-107-2137',
                    hintStyle: const TextStyle(
                        color: Color(0xff676767), fontSize: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 46.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/Home');
                      },
                   child: rounded_button('Save'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

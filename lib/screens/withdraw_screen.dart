import 'package:flutter/material.dart';
import '../widgets/digitalCart.dart';
import '../widgets/rounded_Button.dart';

class withDrawScreen extends StatelessWidget {
  const withDrawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/Home');
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff9098B1),
          ),
        ),
        title: const Text(
          'Withdraw Money',
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Inter',
            color: Color(0xff3C3C3C),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  height: 62.0,
                  width: 343.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff5D5FEF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Text(
                        '\$6680.00',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'Amount',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Inter',
                    color: Color(0xff676767),
                  ),
                ),
                const SizedBox(height: 12.0),
                Container(
                  height: 55.0,
                  width: 343.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffEFEFEF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 200.0),
                        child: Text(
                          '250',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff676767),
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.arrow_drop_up_sharp,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Container(
                        height: 55.0,
                        width: 59.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffE4E4E6),
                        ),
                        child: const Center(
                          child: Text(
                            '\$',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Color(0xff3C3C3C),
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'Withdraw to',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Inter',
                    color: Color(0xff676767),
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    digatalCart('images/visa2.png'),
                    const SizedBox(width: 21.0),
                    digatalCart('images/mastercart.png'),
                    const SizedBox(width: 21.0),
                    digatalCart('images/paypal.png'),
                  ],
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'Card Holder Name',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Inter',
                    color: Color(0xff676767),
                  ),
                ),
                const SizedBox(height: 12.0),
                Container(
                  height: 55.0,
                  width: 343.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffEFEFEF),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 16.0),
                      Text(
                        'Ahmed_ullah',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xff3C3C3C),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'Card Number',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Inter',
                    color: Color(0xff676767),
                  ),
                ),
                const SizedBox(height: 12.0),
                Container(
                  height: 55.0,
                  width: 343.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffEFEFEF),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 16.0),
                      Text(
                        '3455 5555 666 8767',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xff3C3C3C),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/Home');
                      },
                   child:rounded_button('Withdraw'),
                    )
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

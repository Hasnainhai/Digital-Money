import 'package:flutter/material.dart';
import '../widgets/price.dart';
import '../widgets/avatar.dart';

class TrasferMoney extends StatefulWidget {
  const TrasferMoney({Key? key}) : super(key: key);

  @override
  State<TrasferMoney> createState() => _TrasferMoneyState();
}

class _TrasferMoneyState extends State<TrasferMoney> {
  bool isBool = false;
  int _count = 150;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff9098B1),
          ),
        ),
        title: const Text(
          'Send Money',
          style: TextStyle(
            fontSize: 22.0,
            fontFamily: 'Inter',
            color: Colors.black,
          ),
        ),
        actions: [
          ClipRRect(
            child: Container(
              height: 46.0,
              width: 46.0,
              child: Image.asset(
                'images/profile.png',
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30.0),
                    const Text(
                      'Choose Account',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xff3C3C3C),
                        fontFamily: 'Inter',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Container(
                      height: 100.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 0.5,
                            blurRadius: 2.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 41.0,
                            width: 51.0,
                            child: Image.asset(
                              'images/visa.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Visa MasterCard',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff3C3C3C),
                                ),
                              ),
                              Text(
                                '**** **** **** 1245',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff3C3C3C),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isBool = !isBool;
                              });
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 32.0,
                                  width: 32.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xff5D5FEF),
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: isBool,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0, left: 6.0),
                                    child: Container(
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        color: Color(0xff5D5FEF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Container(
                      height: 100.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 0.5,
                            blurRadius: 2.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 41.0,
                            width: 51.0,
                            child: Image.asset(
                              'images/mastercart.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'MasterCard Gold',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff3C3C3C),
                                ),
                              ),
                              Text(
                                '**** **** **** 9876',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff3C3C3C),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 32.0,
                            width: 32.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                              border: Border.all(color: Color(0xff5D5FEF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Container(
                      height: 100.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 0.5,
                            blurRadius: 2.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 41.0,
                            width: 51.0,
                            child: Image.asset(
                              'images/paypal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'PayPal Cash Card',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff3C3C3C),
                                ),
                              ),
                              Text(
                                '**** **** **** 7150',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff3C3C3C),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 32.0,
                            width: 32.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                              border: Border.all(color: Color(0xff5D5FEF)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50.0),
              Container(
                height: 196.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 0.5,
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'How much would you like to send?',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff3C3C3C),
                        fontFamily: 'Inter',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 24.0,
                          width: 31.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Color(0xffDFDFFC),
                          ),
                          child: InkWell(
                            onTap: () {
                              _decrement();
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Icon(
                                Icons.maximize_outlined,
                                color: Color(0xff5D5FEF),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          _count.toString(),
                          style: const TextStyle(
                              fontSize: 24.0,
                              fontFamily: 'Inter',
                              color: Color(0xff5D5FEF)),
                        ),
                        Container(
                          height: 24.0,
                          width: 31.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Color(0xffDFDFFC),
                          ),
                          child: InkWell(
                            onTap: () {
                              _increment();
                            },
                            child: const Icon(
                              Icons.add,
                              color: Color(0xff5D5FEF),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Container(
                        height: 20.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            price('\$ 100'),
                            const SizedBox(width: 29.0),
                            Container(
                              height: 20.0,
                              width: 52.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Color(0xff5D5FEF),
                              ),
                              child: const Center(
                                child: Text(
                                  '\$ 150',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 29.0),
                            price('\$ 200'),
                            const SizedBox(width: 29.0),
                            price('\$ 250'),
                            const SizedBox(width: 29.0),
                            price('\$ 300'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Choose a Recepient',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xff3C3C3C),
                      fontFamily: 'Inter',
                    ),
                  ),
                  Container(
                    height: 20.0,
                    width: 52.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.blue.shade100,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.add,
                          color: Color(0xff0003FF),
                          size: 15.0,
                        ),
                        Text(
                          'Add',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Color(0xff0003FF),
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  height: 68.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Avatar('images/profile2.png', 'Emma'),
                      const SizedBox(width: 46.0),
                      Column(
                        children: [
                          Container(
                            height: 46.0,
                            width: 46.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23.0),
                              border: Border.all(
                                  color: Color(0xff5D5FEF), width: 3.0),
                            ),
                            child: Image.asset('images/profile.png'),
                          ),
                          const SizedBox(height: 5.0),
                          const Text(
                            'Ahmed',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Inter',
                              color: Color(0xff5D5FEF),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 46.0),
                      Avatar('images/profile3.png', 'John'),
                      const SizedBox(width: 46.0),
                      Avatar('images/profile4.png', 'Aliza'),
                      const SizedBox(width: 46.0),
                      Avatar('images/profile.png', 'John'),
                      const SizedBox(width: 46.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 46.0,
                    width: 136.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Color(0xffDFDFFC),
                    ),
                    child: const Center(
                      child: Text(
                        'Take me back',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff3C3C3C),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/sendMoney');
                    },
                    child: Container(
                      height: 46.0,
                      width: 136.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: Color(0xff5D5FEF),
                      ),
                      child: const Center(
                        child: Text(
                          'Send to Ahmed',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100.0),
              Center(
                child: Container(
                  height: 3.0,
                  width: 100.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

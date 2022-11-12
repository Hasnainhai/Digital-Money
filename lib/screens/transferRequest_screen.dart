import 'package:flutter/material.dart';
import '../widgets/rounded_Button.dart';

class transferRequest extends StatelessWidget {
  const transferRequest({Key? key}) : super(key: key);

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
            Icons.arrow_back_ios,
            color: Color(0xff9098B1),
          ),
        ),
        title: const Text(
          'Transfer',
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Inter',
            color: Color(0xff3C3C3C),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.groups,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 26.0,
                  width: 76.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xffC4C4C4)),
                  child: const Center(
                    child: Text(
                      'send',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff3C3C3C),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 26.0,
                  width: 76.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xff5D5FEF)),
                  child: const Center(
                    child: Text(
                      'Request',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35.0),
            const Text(
              'Select Digital Assets',
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xff676767),
                fontFamily: 'Inter',
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/mastercart.png'),
                  ),
                  const Text(
                    'MasterCard Gold',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff3C3C3C),
                      fontFamily: 'Inter',
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xff374957),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'How Much?',
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
                      '205',
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
            const SizedBox(height: 16.0),
            const Text(
              'You want to request',
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
                    'Ibrahim Ahmed',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff3C3C3C),
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'His Email',
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
                    'Ibrahim123@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff3C3C3C),
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 46.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/transferSent');
                  },
               child:rounded_button('Send Request'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

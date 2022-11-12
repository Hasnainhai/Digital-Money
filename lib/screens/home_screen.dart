import 'package:flutter/material.dart';
import '../widgets/cart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5D5FEF),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Good Morning',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/profile');
                      },
                      child:Container(
                        height: 46.0,
                        width: 46.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23.0),
                          image: const DecorationImage(
                            image: AssetImage('images/profile.png'),
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Active Balance ',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          '\$20,000 ',
                          style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 29.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('images/visa.png'),
                          const Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Color(0xff555555),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 42.0),
                Container(
                  height: 550.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34.0),
                      topRight: Radius.circular(34.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 18.0),
                        const Text(
                          'Operations',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff3C3C3C),
                            fontFamily: 'Inter',
                          ),
                        ),
                       const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/transferMoney');
                                  },
                              child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.blue.shade50,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'images/transfer.png',
                                        color: Color(0xff5D5FEF),
                                      ),
                                    ),
                                  ),
                                ),
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'Transfer',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Inter',
                                    color: Color(0xff3C3C3C),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('/withdraw');
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Colors.blue.shade50,
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'images/withdraw.png',
                                          color: Color(0xff5D5FEF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'Withdraw',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Inter',
                                    color: Color(0xff3C3C3C),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.blue.shade50,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'images/mycart.png',
                                        color: Color(0xff5D5FEF),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'My Card',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Inter',
                                    color: Color(0xff3C3C3C),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 22.0),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/transferReq');
                              },
                          child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.blue.shade50,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'images/request.png',
                                      color: Color(0xff5D5FEF),   
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ),
                            const SizedBox(height: 10.0),
                            const Padding(
                              padding: EdgeInsets.only(left: 24.0),
                              child: Text(
                                'Request',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff3C3C3C),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 33.0),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Transections',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xff3C3C3C),
                                    fontFamily: 'Inter',
                                  ),
                                ),
                                Text(
                                  'View All',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xff3C3C3C),
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 22.0),
                            Cart(
                              'images/profile2.png',
                              'Emma',
                              'Suden',
                              '+ \$32.00',
                              '10 Sept 2022',
                            ),
                            const SizedBox(height: 24.0),
                            Cart(
                              'images/profile3.png',
                              'Ibrahim',
                              'Uk',
                              '+ \$421.00',
                              '06 Sept 2022',
                            ),
                            const SizedBox(height: 24.0),
                            Cart(
                              'images/profile4.png',
                              'Isabella',
                              'USA',
                              '+ \$421.00',
                              '06 Sept 2020',
                            ),
                            const SizedBox(height: 24.0),
                            Cart(
                              'images/profile.png',
                              'Hasnain',
                              'UK',
                              '+ \$33.00',
                              '11 Sept 2022',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 56.0,
        width: double.infinity,
        color: Color(0xff5D5FEF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.white,
                size: 24.0,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message,
                  color: Color(0xffD3DCE5), size: 24.0),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications,
                  color: Color(0xffD3DCE5), size: 24.0),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings,
                  color: Color(0xffD3DCE5), size: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/Profile/showDialog.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void _onItemTapped(int index) {
    DialogHelper.showDevelopmentDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        // 添加 SafeArea
        child:
      Scaffold(
          backgroundColor: Color(0xFFF2F2F2),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFFF2F2F2),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              child: Transform.translate(
                offset: Offset(10.0, 7.5),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Transform.translate(
                  offset: Offset(-5.0, 7.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Transform.translate(
                        offset: Offset(0, -7),
                        child: Icon(Icons.qr_code_rounded,
                            color: Color(0xFF102F82), size: 30),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Card(
                  elevation: 0,
                  color: Colors.white,
                  child: ListTile(
                    leading: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularProgressIndicator(
                          strokeWidth: 3.0,
                          value: 0.6,
                          backgroundColor: Colors.grey[300],
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF143384)),
                        ),
                        Text(
                          "3/5",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF143384),
                          ),
                        ),
                      ],
                    ),
                    title: Text('Set up your account',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    subtitle: Text('A few more steps left.',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700])),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 0,
                  color: Colors.white,
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF7F5F0),
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xFFf7f5f0),
                        backgroundImage: AssetImage('assets/images/paypal.png'),
                      ),
                    ),
                    title: Text('\$99932.00',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'PayPal balance',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Make an impact',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 10, 26, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'See more',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 4),
                        Image.asset(
                          'assets/images/arrow.png',
                          width: 14,
                          height: 14,
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(4, (index) {
                      Color color;
                      String iconURL = "";
                      String text = "";
                      switch (index) {
                        case 0:
                          color = Color(0xFF222323);
                          iconURL = "assets/images/icon1.jpg";
                          text = "Veterans Association Food Bank";
                          break;
                        case 1:
                          color = Color(0xFF63214E);
                          text = "Community Food Centres Canada";
                          iconURL = "assets/images/icon2.jpg";
                          break;
                        case 2:
                          color = Color(0xFF386750);
                          text = "Action Against Hunger Canada";
                          iconURL = "assets/images/icon3.png";
                          break;
                        case 3:
                          color = Color(0xFFC84423);
                          text = "Canadian Feed The Children";
                          iconURL = "assets/images/icon4.png";
                          break;
                        default:
                          color = Colors.grey;
                      }
                      return Container(
                        width: 320,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16.0, top: 16.0),
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                backgroundImage: iconURL.isNotEmpty
                                    ? AssetImage(iconURL)
                                    : null,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              margin: EdgeInsets.only(left: 16.0, bottom: 16.0),
                              child: Text(
                                text,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      flex: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          DialogHelper.showDevelopmentDialog(context);
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF1c44ae),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text('Send',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          DialogHelper.showDevelopmentDialog(context);
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF1c44ae),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text('Request',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/payments.png',
                      width: 24,
                      height: 24,
                    ),
                    label: 'Payments',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/wallet.png',
                      width: 24,
                      height: 24,
                    ),
                    label: 'Wallet',
                  )
                ],
                backgroundColor: Colors.white,
                elevation: 0,
                selectedItemColor: Color(0xFF041433),
                unselectedItemColor: Color(0xFF555b67),
                onTap: _onItemTapped,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

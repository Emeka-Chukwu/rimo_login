import 'package:flutter/material.dart';
import 'package:login_test/utils/config.dart';
import 'package:login_test/utils/margin.dart';
import 'package:login_test/widget/components.dart';

class DashBoardHome extends StatefulWidget {
  const DashBoardHome({Key? key}) : super(key: key);

  @override
  _DashBoardHomeState createState() => _DashBoardHomeState();
}

class _DashBoardHomeState extends State<DashBoardHome> {
  int currentIndex = 0;
  bool hide = true;
  String value = "200,000";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 20),
                    XMargin(width: 20),
                    Expanded(
                      child: Text(
                        "Hi Sade,",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Color(0xffAC8BD3),
                    ),
                  ],
                ),
                YMargin(height: 40),
                Container(
                  height: 142,
                  width: Responsive.screenWidth(90, context),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff7B55A8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              hide = !hide;
                            });
                          },
                          icon: Icon(
                            hide ? Icons.visibility : Icons.visibility_off,
                            color: Colors.white,
                          ),
                        )
                      ]),
                      Text(
                        "Primary Wallet",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      YMargin(height: Responsive.screenHeight(1, context)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "NGN ",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffAC8BD3),
                              ),
                            ),
                            Text(
                              hide ? "*****" : "$value",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                      YMargin(height: Responsive.screenHeight(1, context)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Color(0xffAC8BD3),
                                shape: BoxShape.circle,
                              ),
                              child: GestureDetector(
                                onTap: () => null,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                            XMargin(width: 10),
                            Text(
                              "Add cash",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
                YMargin(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContainerWidthDisplay(
                      color: Color(0xffAC8BD3),
                      height: 6,
                      width: 19,
                    ),
                    XMargin(width: 8),
                    ContainerWidthDisplay(
                      color: Color(0xffF6EFFF),
                      height: 6,
                      width: 12,
                    ),
                    XMargin(width: 8),
                    ContainerWidthDisplay(
                      color: Color(0xffF6EFFF),
                      height: 6,
                      width: 12,
                    ),
                  ],
                ),
                YMargin(height: 30),
                Text(
                  "Getting Started",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                YMargin(height: 30),
                Wrap(
                  spacing: 20,
                  children: [
                    WrapContainer(
                      iconColor: Color(0xffAC8BD3),
                      color: Color(0xffF8F3FF),
                      iconData: Icons.flight,
                      title: 'Send \nMoney ',
                    ),
                    WrapContainer(
                      iconColor: Color(0xffAC8BD3),
                      color: Color(0xffF8F3FF),
                      iconData: Icons.arrow_drop_down_sharp,
                      title: 'Request \nMoney ',
                    ),
                    WrapContainer(
                      showBorder: true,
                      iconColor: Color(0xffAC8BD3),
                      color: Color(0xffF8F3FF),
                      iconData: Icons.add,
                      title: 'Create a \nWallet ',
                    ),
                    WrapContainer(
                      iconColor: Color(0xffAC8BD3),
                      color: Color(0xffFCF1F3),
                      iconData: Icons.star,
                      title: 'Upgrade your \naccount ',
                    ),
                  ],
                ),
                YMargin(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Transactions",
                      style: TextStyle(
                        color: Color(0xff181818),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xff4F1699),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                YMargin(height: 50),
                Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 20),
                        XMargin(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Transfer to chidi obi,",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              YMargin(height: 4),
                              Text(
                                "sent,",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffAC8BD3),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "-N150,000,",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            YMargin(height: 4),
                            Text(
                              "Aug 12, 2020",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffAC8BD3),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                YMargin(height: 10),
                Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 20),
                        XMargin(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bank Transfer,",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              YMargin(height: 4),
                              Text(
                                "sent,",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffAC8BD3),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "-N150,000,",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            YMargin(height: 4),
                            Text(
                              "Aug 12, 2020",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffAC8BD3),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                YMargin(height: 50),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        }, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: "Wallet",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.swap_horiz), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_membership), label: "Settle card"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more,
              ),
              label: "More")
        ],
      ),
    );
  }
}

class ContainerWidthDisplay extends StatelessWidget {
  const ContainerWidthDisplay({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
  }) : super(key: key);
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(3), color: color),
    );
  }
}

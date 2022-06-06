import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(9, 133, 119, 100),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(15, 30, 0, 10),
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                    backgroundColor: Colors.white24,
                    child: Container(
                      padding: EdgeInsets.only(right: 5),
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ))),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Welcome back\n',
                        style: TextStyle(fontSize: 15),
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Cindy-dev',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22)),
                        ]),
                  ),
                  Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Image.asset(
              'asset/image/atm (1).png',
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white30,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                        ),
                        child: Text('Transfer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white30,
                        child: Icon(
                          Icons.check_box,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                        ),
                        child: Text('Spending',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white30,
                        child: Icon(
                          Icons.file_copy_sharp,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                        ),
                        child: Text('Detail',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transaction',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  Text('Today',
                      style: TextStyle(color: Colors.white, fontSize: 16))
                ],
              ),
            ),
            ListTile(
              leading: FittedBox(
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(Icons.shopping_cart_sharp,
                            size: 20, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('T-shirt',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Text('Spending',
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              title: Icon(
                Icons.trending_down_sharp,
                color: Colors.white,
              ),
              trailing: Text('\$. 100',
                  style: TextStyle(color: Colors.yellow, fontSize: 16)),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: VerticalDivider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            ListTile(
              leading: FittedBox(
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(Icons.directions_car_sharp,
                            size: 20, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bus',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Text('Ticketing',
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              title: Icon(
                Icons.trending_down_sharp,
                color: Colors.white,
              ),
              trailing: Text('\$. 10',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: VerticalDivider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            ListTile(
              leading: FittedBox(
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(Icons.fastfood,
                            size: 20, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Edens',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Text('Fastfood',
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              title: Icon(
                Icons.trending_down_sharp,
                color: Colors.white,
              ),
              trailing: Text('\$. 50',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: VerticalDivider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            ListTile(
              leading: FittedBox(
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(Icons.directions_car_sharp,
                            size: 20, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Top-up',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Text('Money',
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              title: Icon(
                Icons.trending_up_sharp,
                color: Colors.white,
              ),
              trailing: Text('\$. 1000',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),

            //Spacer(),
          ],
        ),
      ),
      persistentFooterButtons: [
        Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          alignment: Alignment.center,
          height: 100 / 2,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
              ),
              Icon(
                Icons.account_balance_wallet,
              ),
              Icon(
                Icons.insert_chart,
              ),
              Icon(Icons.person),
            ],
          ),
        )
      ],
    );
  }
}

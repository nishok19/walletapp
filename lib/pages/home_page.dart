// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_button.dart';
import 'package:walletapp/util/my_card.dart';
import 'package:walletapp/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[200],
        child: Icon(
          Icons.monetization_on,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 28,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 28,
                ))
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    "My Cards",
                    style: TextStyle(fontSize: 26),
                  ),
                  // Plus Button
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(Icons.add))
                ],
              ),
            ),

            SizedBox(height: 20),

            // Cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 43243.34,
                    cardNumber: 43542354,
                    expiryMonth: 12,
                    expiryYear: 25,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 22443.34,
                    cardNumber: 43741127,
                    expiryMonth: 2,
                    expiryYear: 26,
                    color: Colors.deepOrange[400],
                  ),
                  MyCard(
                    balance: 243.34,
                    cardNumber: 22557353,
                    expiryMonth: 5,
                    expiryYear: 27,
                    color: Colors.green[400],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),

            SizedBox(
              height: 50,
            ),
            // 3 buttons -> send + pay + bills

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Send button
                  MyButton(
                      iconImagePath: "lib/icons/send-money.png",
                      buttonText: "Send"),
                  // Pay button
                  MyButton(
                      iconImagePath: "lib/icons/card.png", buttonText: "Pay"),

                  // Bills button
                  MyButton(
                      iconImagePath: "lib/icons/bill.png", buttonText: "Bills"),
                ],
              ),
            ),

            // column -> stats + transactions

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  MyListTile(
                      iconImagePath: "lib/icons/bar-chart.png",
                      tileTitle: "Statistics",
                      tileSubTitle: "Payments and Income"),
                  MyListTile(
                      iconImagePath: "lib/icons/cash-flow.png",
                      tileTitle: "Transactions",
                      tileSubTitle: "Transaction history"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

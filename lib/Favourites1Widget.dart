import 'package:flutter/material.dart';

class Favourites1 extends StatelessWidget {
  List text = [
    "Vegetable Roll",
    "Salmon Bowl",
    "Salmon fish",
    "Vegetable puff",
  ];
  List text2 = ["4.3 [405]", "5.3 [405]", "4.6 [405]", "4.1 [405]"];
  List text3 = ["24.00", "25.00", "28.00", "20.00"];
  List text4 = ["Beef Bowl", "Egg Bowl", "Fruit Bowl"];
  List text5 = ["25.00", "27.00", "20.00"];
  List image = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
  ];
  List menu = ["Breakfast", "lunch", "Dinner"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7, top: 30),
                  child: Icon(
                    Icons.menu,
                    color: Colors.redAccent.withOpacity(0.7),
                    size: 40,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 7, top: 30),
                  child: Icon(
                    Icons.add_road,
                    color: Colors.redAccent.withOpacity(0.7),
                    size: 40,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Container(
                height: 50,
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.search,
                          color: Colors.redAccent.withOpacity(0.7),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none)),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(2, 2),
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 160),
              child: Text(
                "Your Favourites",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: SizedBox(
                height: 260,
                child: Row(
                  children: List.generate(
                    4,
                    (index) => Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 200,
                              width: 165,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 75),
                                    child: Text(
                                      text[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 35),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 5),
                                        child: Text(
                                          text2[index],
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15, left: 5),
                                        child: Icon(
                                          Icons.attach_money,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 15,
                                        ),
                                        child: Text(
                                          text3[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15, left: 30),
                                        child: Container(
                                          height: 25,
                                          width: 47,
                                          child: Center(
                                            child: Text(
                                              "Add",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.redAccent
                                                      .withOpacity(0.7)),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: Colors.teal.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Positioned(
                              bottom: 120,
                              left: 25,
                              child: Image.asset(
                                image[index],
                                scale: 1.60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 100),
              child: SizedBox(
                width: 340,
                child: Column(
                  children: List.generate(
                    3,
                    (index) => Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 13),
                              width: 360,
                              height: 80,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 20),
                                    child: Text(
                                      text4[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 110, bottom: 15),
                                        child: Icon(
                                          Icons.attach_money,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Text(
                                          text5[index],
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 60),
                                        child: Container(
                                          height: 25,
                                          width: 50,
                                          child: Center(
                                            child: Text(
                                              "Add",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color:
                                                    Colors.red.withOpacity(0.7),
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              color: Colors.teal.withOpacity(0.5),
                            ),
                          ),
                          Positioned(
                            right: 230,
                            child:
                                Image.asset("assets/images/4.png", scale: 1.85),
                          ),
                          Positioned(
                            left: -90,
                            top: 30,
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Row(
                                children: [
                                  Text(
                                    menu[index],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

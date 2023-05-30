import 'package:flutter/material.dart';

class Favourites2 extends StatelessWidget {
  List listtext = ["WEIGHT", "CALORIES", "VITAMINS", "DELIVERY"];
  List listtext2 = ["250", "240", "A.B6", "  30"];
  List listtext3 = ["G ", "CAL", "VIT", " MIN"];
  List color = [
    Colors.teal.withOpacity(0.5),
    Colors.white,
    Colors.white,
    Colors.white
  ];
  List color2 = [
    Colors.teal.withOpacity(0.5),
    Colors.black38,
    Colors.black38,
    Colors.black38
  ];
  List color4 = [Colors.white, Colors.black, Colors.black, Colors.black];
  List color3 = [Colors.white, Colors.black38, Colors.black38, Colors.black38];
  List color5 = [Colors.white, Colors.black38, Colors.black38, Colors.black38];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 320,
            width: 415,
            color: Colors.teal.withOpacity(0.5),
          ),
          Positioned(
            top: 220,
            child: Container(
              height: 660,
              width: 415,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200, left: 45),
                    child: Row(
                      children: const [
                        Text(
                          "Vegetable",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            "Sandwich",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 33,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 50),
                    child: Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 30,
                          color: Colors.black54,
                        ),
                        Text(
                          "24.00",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Container(
                            height: 47,
                            width: 115,
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 11),
                                  child: Icon(
                                    Icons.remove,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 11),
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 11),
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 25,
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.red.withOpacity(0.9),
            ),
          ),
          Positioned(
            top: 40,
            left: 350,
            child: Icon(
              Icons.add_road,
              size: 30,
              color: Colors.red.withOpacity(0.7),
            ),
          ),
          Positioned(
            left: 55,
            top: 100,
            child: Image.asset(
              "assets/images/2.png",
              scale: 0.75,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 420),
              child: Row(
                children: List.generate(
                  4,
                  (index) => Center(
                    child: Container(
                      height: 70,
                      width: 130,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: color[index],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: color2[index], width: 1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 18, top: 7),
                            child: Text(
                              listtext[index],
                              style: TextStyle(
                                color: color3[index],
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 45),
                            child: Row(
                              children: [
                                Text(
                                  listtext2[index],
                                  style: TextStyle(
                                    color: color4[index],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, top: 4),
                                  child: Text(
                                    listtext3[index],
                                    style: TextStyle(
                                      color: color5[index],
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
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
          Positioned(
            top: 745,
            left: 30,
            child: Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.5),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Icon(
                      Icons.attach_money,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                  Text(
                    "72.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Icon(
                      Icons.keyboard_double_arrow_right_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

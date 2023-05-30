import 'package:flutter/material.dart';

class Online extends StatefulWidget {
  // const Online({Key? key}) : super(key: key);

  @override
  State<Online> createState() => _OnlineState();
}

List image = [
  "assets/images/8.png",
  "assets/images/13.png",
  "assets/images/11.png",
  "assets/images/12.png",
];

List text1 = ["Consultation", "Medicines", "Lab Tests", "Health", "Coffee"];

int selected = 0;

bool isfavourite = false;

List image1 = [
  "assets/images/10.png",
  "assets/images/11.png",
  "assets/images/10.png",
];
List multi = ["Multi Vitamins", "Thayrosafe     ", "Omega      "];

List pills = [" 90 pills", " 180 Pills", "132 Pills"];

List mrp = ["217", " 342", "165"];

class _OnlineState extends State<Online> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 80),
                child: Text(
                  "Online\nPharmacy",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xfff0d3af),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.green,
                          ),
                          hintText: "Search for drugs",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.remove_road_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 30),
                child: Row(
                  children: [
                    Text(
                      "Shop by Category",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(width: 175),
                    Icon(
                      Icons.more_horiz,
                      size: 40,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: List.generate(
                        4,
                        (index) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkResponse(
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  color: selected == index
                                      ? Colors.green
                                      : Color(0xfff0d3af),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Image.asset(
                                  image[index],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                text1[index],
                                style: TextStyle(
                                  color: selected == index
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 30),
                child: Row(
                  children: [
                    Text(
                      "Popular Products",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(width: 90),
                    Icon(
                      Icons.more_horiz,
                      size: 40,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: SizedBox(
                  height: 300,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) => Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 250,
                                width: 170,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 110,
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Image.asset(
                                              image1[index],
                                              scale: 2.50,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 25, left: 10),
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        multi[index],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 80),
                                      child: Text(
                                        pills[index],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, left: 10),
                                          child: Icon(
                                            Icons.attach_money,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, right: 30),
                                          child: Text(
                                            mrp[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  color: Color(0xfff0d3af),
                                  borderRadius: BorderRadius.circular(30),
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
            ],
          ),
          Positioned(
            right: 0,
            top: -50,
            child: Image.asset(
              "assets/images/9.png",
              scale: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

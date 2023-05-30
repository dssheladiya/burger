import 'package:flutter/material.dart';

import 'Favourites1Widget.dart';

class Online1 extends StatefulWidget {
  Online1({Key? key}) : super(key: key);

  @override
  State<Online1> createState() => _Online1State();
}

class _Online1State extends State<Online1> {
  List images = [
    "assets/images/10.png",
    "assets/images/14.png",
    "assets/images/12.png",
    "assets/images/10.png",
  ];

  List nonerate = [
    "\$287",
    "\$392",
    "\$185",
    "\$165",
  ];

  List pills = ["90 Pills", "180 Pills", "132 Pills", "60 Pills"];

  List test = ["Multi Vitamins", "Thayrosafe", "Omega 3", "Sore Capsule"];

  List mrp = ["\$ 217", "\$ 342", "\$ 165", "\$ 135"];

  int selected = 0;

  int add = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Favourites1(),
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    "medicines",
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(Icons.shopping_cart,
                      color: Colors.redAccent.withOpacity(0.7), size: 40),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff0d3af),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.green),
                      hintText: "Search for drugs",
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff2a8c8b),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.remove_road_rounded, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: SingleChildScrollView(
              //scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: List.generate(
                  4,
                  (index) => Center(
                    child: InkResponse(
                      onTap: () {
                        setState(
                          () {
                            selected = index;
                          },
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Color(0xfff0d3af),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(images[index],
                                  height: 100, width: 100),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    test[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    pills[index],
                                    style: TextStyle(
                                        // fontSize: 18,
                                        color: Colors.black38),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        mrp[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        nonerate[index],
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              selected == index
                                  ? Container(
                                      height: 150,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(35),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Add(),
                                      ),
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.favorite_border,
                                            color: Color(0xfff28165), size: 35),
                                        Icon(Icons.add_circle,
                                            color: Color(0xfff28165), size: 35),
                                      ],
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  int incre = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            setState(
              () {
                incre++;
              },
            );
          },
          icon: Icon(Icons.add_circle_outline, color: Colors.white, size: 30),
        ),
        Text(
          "$incre",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        IconButton(
          onPressed: () {
            setState(
              () {
                if (incre > 0) {
                  incre--;
                }
              },
            );
          },
          icon:
              Icon(Icons.remove_circle_outline, color: Colors.white, size: 30),
        ),
      ],
    );
  }
}

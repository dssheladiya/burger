import 'package:flutter/material.dart';

class Delivering1 extends StatefulWidget {
  const Delivering1({Key? key}) : super(key: key);

  @override
  State<Delivering1> createState() => _Delivering1State();
}

class _Delivering1State extends State<Delivering1> {
  List icon = [
    Icons.emoji_food_beverage,
    Icons.cookie_outlined,
    Icons.local_pizza,
    Icons.coffee,
    Icons.local_drink,
  ];
  List free = ["Deliverd\nby Primazee", "Free\nDelivery", "Special\nOffers"];

  List ima = ["assets/images/15.png", "assets/images/16.png"];

  List imag = [
    "assets/images/1.png",
    "assets/images/3.png",
  ];
  List icon1 = [
    Icons.delivery_dining_outlined,
    Icons.location_on_outlined,
    Icons.adb,
  ];
  int selected = 0;
  int offer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3fb),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 415,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 415,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.black38.withOpacity(0.8),
                            size: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              "PRIMZEE",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(width: 150),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(100)),
                            child: Icon(
                              Icons.search,
                              color: Colors.redAccent.withOpacity(0.7),
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                       physics: BouncingScrollPhysics(),
                              child: Row(
                                children: List.generate(
                                5,
                                (index) => Column(
                                  children: [
                                    Center(
                                      child: InkResponse(
                                        onTap: () {
                                          setState(() {
                                            selected = index;
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 70,
                                          width: 80,
                                          color: Colors.white,
                                          child: Icon(
                                            icon[index],
                                            color: selected == index
                                                ? Colors.black
                                                : Colors.black38,
                                            size: 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: selected == index
                                          ? Colors.black
                                          : Colors.transparent,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 35,
                      child: Text(
                        "Deliver to",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 34),
                      ),
                    ),
                    Positioned(
                      top: 210,
                      left: 30,
                      child: Container(
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_rounded,
                                color: Colors.amber, size: 30),
                            SizedBox(width: 20),
                            Text(
                              "Home  .",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Container(
                              height: 60,
                              width: 200,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "4405 Beeghley Street",
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            Icon(Icons.my_location),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Center(
                      child: InkResponse(
                        onTap: () {
                          setState(() {
                            offer = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: 75,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:
                                offer == index ? Colors.black12 : Colors.white,
                            border: Border.all(color: Colors.white),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 9),
                              Icon(icon1[index], size: 40),
                              SizedBox(width: 10),
                              Text(free[index]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.rotate_left_outlined,
                        color: Colors.amber,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Recent Orders",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(width: 120),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                    2,
                    (index) => Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 200,
                        width: 390,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 120,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    ima[index],
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 300, top: 15),
                                    child: Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.circular(30),
                                        border:
                                            Border.all(color: Colors.black38),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              "4,9",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 20,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 20),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("assets/images/20.png",
                                      scale: 10),
                                ),
                                SizedBox(width: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1 * Mushroom",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "85,00 t",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    child: Icon(
                                      Icons.rotate_left_outlined,
                                      color: Colors.amber,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 160, top: 13),
                child: Text(
                  "Recomended",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                    2,
                    (index) => Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 90,
                        width: 220,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(
                          imag[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

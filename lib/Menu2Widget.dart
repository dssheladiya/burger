import 'package:flutter/material.dart';

class Menu2 extends StatelessWidget {
  const Menu2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 250,
            width: 415,
            decoration: BoxDecoration(
              color: Color(0xffe6f0fa),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(55),
              ),
            ),
          ),
          Positioned(
            bottom: 520,
            left: 90,
            child: Image.asset(
              'assets/images/7.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                SafeArea(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 30,
                      ),
                      Spacer(),
                      Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 390, left: 30),
            child: Text(
              "Toast with Ham",
              style: TextStyle(
                  color: Color(0xff253360),
                  fontWeight: FontWeight.bold,
                  fontSize: 37),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 470, left: 35),
            child: Row(
              children: [
                Text(
                  "\$3,28",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffed6909),
                  ),
                ),
                SizedBox(
                  width: 44,
                ),
                Container(
                  height: 40,
                  width: 95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.remove,
                        color: Color(0xff253360),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color(0xff253360),
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: Color(0xff253360),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffe6f0fb),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 555, left: 37),
            child: Text(
              "Weight",
              style: TextStyle(color: Color(0xffa2b6c2), fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 585, left: 37),
            child: Text(
              "120g",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 655, left: 37),
            child: Text(
              "Calaries",
              style: TextStyle(
                color: Color(0xffa2b6c2),
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 680, left: 38),
            child: Text(
              "430 ccal",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 558, left: 160),
            child: Text(
              "Toast bread - ham",
              style: TextStyle(
                color: Color(0xffa2b6c2),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 585, left: 160),
            child: Text(
              "mayonnaise - cheese",
              style: TextStyle(
                color: Color(0xffa2b6c2),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 614, left: 160),
            child: Text(
              "ketchup - tomatoes",
              style: TextStyle(
                color: Color(0xffa2b6c2),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 643, left: 160),
            child: Text(
              "fresh herbs - egg",
              style: TextStyle(
                color: Color(0xffa2b6c2),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 667, left: 160),
            child: Text(
              "vegetable oil",
              style: TextStyle(
                color: Color(0xffa2b6c2),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 790, left: 30),
            child: Container(
              height: 60,
              width: 355,
              child: Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff38a13c),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

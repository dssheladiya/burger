import 'package:flutter/material.dart';

class Menu1 extends StatefulWidget {
  @override
  State<Menu1> createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  // const Menu({Key? key}) : super(key: key);
  List Color1 = [
    Colors.green,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  List Color2 = [
    Colors.white,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  List Color3 = [
    Colors.black,
    Colors.black38,
    Colors.black38,
    Colors.black38,
    Colors.black38,
  ];

  List Color4 = [
    Colors.orangeAccent.withOpacity(0.4),
    Colors.green.withOpacity(0.3),
    Colors.green.withOpacity(0.3),
  ];

  List Color5 = [
    Colors.green,
    Colors.green,
    Colors.green,
  ];

  List Color6 = [
    Colors.white,
    Colors.green,
    Colors.white,
  ];

  List icon1 = [
    Icons.subject_outlined,
    Icons.settings_input_svideo,
    Icons.ramen_dining,
    Icons.local_dining_outlined,
    Icons.coffee
  ];

  List icon2 = [
    Icons.food_bank_outlined,
    Icons.menu_book,
    Icons.dehaze,
  ];

  List text1 = ["Breakfast", "Sets", "Sushi", "Salads", "Coffee"];

  List text2 = ["4,29", "3,28", "3,19"];

  List text3 = ["Sale", "New", "New"];

  List text4 = ["Cheese Pancakes", "Toast with ham", "Pancakes tost"];

  List text5 = ["140g", " 120g", "130g"];

  int selected = 0;
  int selected1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.withOpacity(0.6),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: Container(
              height: 770,
              width: 415,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 350, top: 30),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Our menu",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.blue.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 10),
                        child: Text(
                          "in the restaurant on",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 12),
                        child: Text(
                          "Nevsky Prospekt 42",
                          style: TextStyle(
                            color: Colors.redAccent.shade400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 40),
                    child: Container(
                      width: 390,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.indigo.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: List.generate(
                                5,
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
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 18),
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          color: selected == index
                                              ? Colors.green
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Icon(
                                          icon1[index],
                                          color: selected == index
                                              ? Colors.white
                                              : Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 25),
                    child: Text(
                      "8 items",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  margin: EdgeInsets.symmetric(vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/5.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 40,
                                        child: Center(
                                          child: Text(
                                            text3[index],
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: Color5[index],
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color4[index],
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        text4[index],
                                        style: TextStyle(
                                          fontSize: 22,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.attach_money,
                                            size: 30,
                                          ),
                                          Text(
                                            text2[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              text5[index],
                                              style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
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
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: List.generate(
                3,
                (index) => Center(
                  child: InkResponse(
                    onTap: () {
                      setState(() {
                        selected1 = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 48),
                      child: Icon(
                        icon2[index],
                        size: 40,
                        color: selected1 == index ? Colors.green : Colors.white,
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

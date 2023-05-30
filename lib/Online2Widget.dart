import 'package:flutter/material.dart';

class Online2 extends StatefulWidget {
  //const Online2({Key? key}) : super(key: key);

  @override
  State<Online2> createState() => _Online2State();
}

int add = 0;

class _Online2State extends State<Online2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0d3af),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back,
                      color: Colors.redAccent.withOpacity(0.7), size: 40),
                  Icon(Icons.shopping_cart,
                      color: Colors.redAccent.withOpacity(0.7), size: 40),
                ],
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/10.png",
              ),
            ),
            SizedBox(height: 45),
            Container(
              height: 485,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Multi Vitamins",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Add(),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "90 Pills",
                      style: TextStyle(color: Colors.black38),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star_border_purple500_outlined,
                            color: Colors.amber),
                        SizedBox(width: 15),
                        Text("4.0"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Product Detail",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "multiviamins are used to provide vitamins\nthat are not taken in through the diet"
                      "\nmultivitamins are also used to treat vitamin\ndeficiencies caused by illness,pregnancy and\nmany other conditions.",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          "\$ 217",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "\$287",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xfff38167),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 25),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff2a8c8b),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 35),
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white70,
                                size: 30,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "Add to Basket",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            setState(
              () {
                incre++;
              },
            );
          },
          icon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: Icon(
              Icons.add_circle_outline,
              color: Colors.orange.shade700,
              size: 24,
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          "$incre",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
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
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: Icon(
                Icons.remove_circle_outline,
                color: Colors.orange.shade700,
                size: 24,
              ),
            )),
      ],
    );
  }
}

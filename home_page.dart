import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 0;
  int favoriteicon = 0;
  List<Map<String, dynamic>> listdetails1st = [
    {
      'image': 'asset/image/first-aid-box.png',
      'name': 'Consultation',
    },
    {
      'image': 'asset/image/pills.png',
      'name': 'Medicine',
    },
    {
      'image': 'asset/image/result.png',
      'name': 'Lab Tests',
    },
    {
      'image': 'asset/image/healthcare.png',
      'name': 'Health',
    },
  ];

  List<Map<String, dynamic>> vitamindetail = [
    {
      'image': 'asset/image/vitamin-c.png',
      'tablets': 'Multi Vitamins',
      'detail': '90 pills',
      'rate': '\$217',
      'mrp': '\$287',
    },
    {
      'image': 'asset/image/medicine.png',
      'tablets': 'Thayrosafe',
      'detail': '180 pills',
      'rate': '\$342',
      'mrp': '\$392',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.sort,
                            color: Color(0xFF2E8E8D),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Online\nPharmacy',
                            style: TextStyle(
                                color: Color(0xFFE94061),
                                fontSize: 35,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -90,
                    left: 160,
                    child: Image.asset(
                      'asset/image/27121-3-pills-image.png',
                      height: 280,
                      width: 280,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 240,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5D5AE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, right: 2),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search for dungs, doctors, etc..",
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xFF278C8D),
                              )),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFF278C8D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Text(
                        'Shop by Category',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 102,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  a = index;
                                });
                              },
                              child: Container(
                                height: 70,
                                width: 75,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: a == index
                                      ? Color(0xFFF9876C)
                                      : Color(0xFFF9D9AF),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    listdetails1st[index]['image'],
                                    height: 45,
                                    width: 45,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              listdetails1st[index]['name'],
                              style: TextStyle(
                                color: a == index ? Colors.black : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Text(
                        'Shop by Category',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  child: Container(
                    height: 250,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 180,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFF9D9AF),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          favoriteicon = index;
                                        });
                                      },
                                      child: Icon(
                                        favoriteicon == index
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: favoriteicon == index
                                            ? Colors.red
                                            : Color(0xFF278C8D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Image.asset(
                                    vitamindetail[index]['image'],
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Page01(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        vitamindetail[index]['tablets'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        vitamindetail[index]['detail'],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            vitamindetail[index]['rate'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                            vitamindetail[index]['mrp'],
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class Page01 extends StatefulWidget {
  const Page01({Key? key}) : super(key: key);

  @override
  State<Page01> createState() => _Page01State();
}

class _Page01State extends State<Page01> {
  int fev = 0;
  List<Map<String, dynamic>> details = [
    {
      'image': 'asset/image/vitamin-c.png',
      'tablets': 'Multi Vitamins',
      'detail': '90 pills',
      'rate': '\$217',
      'mrp': '\$287',
    },
    {
      'image': 'asset/image/medicine.png',
      'tablets': 'Thayrosafe',
      'detail': '180 pills',
      'rate': '\$342',
      'mrp': '\$392',
    },
    {
      'image': 'asset/image/vitamin-c.png',
      'tablets': 'Multi Vitamins',
      'detail': '90 pills',
      'rate': '\$217',
      'mrp': '\$287',
    },
    {
      'image': 'asset/image/medicine.png',
      'tablets': 'Thayrosafe',
      'detail': '180 pills',
      'rate': '\$342',
      'mrp': '\$392',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF2E8E8D),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Medicines',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Color(0xFF2E8E8D),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 240,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5D5AE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, right: 2),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search for dungs, doctors, etc..",
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xFF278C8D),
                              )),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFF278C8D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 730,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 170,
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5D5AE),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: Row(
                            children: [
                              InkResponse(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Page02(),
                                      ));
                                },
                                child: Image.asset(
                                  details[index]['image'],
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    details[index]['tablets'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    details[index]['detail'],
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        details[index]['rate'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        details[index]['mrp'],
                                        style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 40),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(
                                          () {
                                            fev = index;
                                          },
                                        );
                                      },
                                      child: Icon(
                                        fev == index
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: fev == index
                                            ? Colors.red
                                            : Color(0xFF278C8D),
                                      ),
                                    ),
                                    Spacer(),
                                    CircleAvatar(
                                      radius: 22,
                                      child: Icon(Icons.add),
                                      backgroundColor: Colors.red,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Page02 extends StatefulWidget {
  const Page02({Key? key}) : super(key: key);

  @override
  State<Page02> createState() => _Page02State();
}

class _Page02State extends State<Page02> {
  int add = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5D5AE),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF2E8E8D),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xFF2E8E8D),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Image.asset(
                'asset/image/vitamin-c.png',
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 15),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Multi Vitamins',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '90 pills',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 18,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 18,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 18,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 18,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.orange,
                                        size: 18,
                                      ),
                                      Text(
                                        '4.0',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  InkResponse(
                                    onTap: () {
                                      setState(() {
                                        add++;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('$add'),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  InkResponse(
                                    onTap: () {
                                      setState(() {
                                        if (add > 1) {
                                          add--;
                                        }
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove_circle_outline,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Product Detail',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Multivitamins are used to provide vitamins\nthat are not taken in through the diet.\nMiltivitamins are also used to treat vitamin deficiencies caused by illness pregnancy and\nany other conditions.',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$217',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '\$287',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 60,
                                    width: 210,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2E8E8D),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Add to Basket',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

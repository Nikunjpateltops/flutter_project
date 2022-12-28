import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  bool value = false;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafe_ordering_system',
      home: cafe_ordering_system(),
    );
  }
}

class cafe_ordering_system extends StatefulWidget {
  const cafe_ordering_system({Key? key}) : super(key: key);

  @override
  State<cafe_ordering_system> createState() => _cafe_ordering_systemState();
}

var amount = 0;

class _cafe_ordering_systemState extends State<cafe_ordering_system> {
  var cheakbox1 = false;
  var cheakbox2 = false;
  var cheakbox3 = false;
  var cheakbox4 = false;
  var cheakbox5 = false;

  var pizza = 200;
  var burger = 100;
  var coffe = 70;
  var cake = 300;
  var icecream = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafe_ordering_system'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Cafe_Ordering_System',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightBlue),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox1,
                  onChanged: (value) {
                    setState(() {
                      cheakbox1 = value!;
                      if (cheakbox1 == true) {
                        amount += pizza;
                      } else {
                        amount -= pizza;
                      }
                    });
                  },
                ),
                Text(
                  'pizza @ rs.200',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox2,
                  onChanged: (value) {
                    setState(() {
                      cheakbox2 = value!;
                      if (cheakbox2 == true) {
                        amount += burger;
                      } else {
                        amount -= burger;
                      }
                    });
                  },
                ),
                Text(
                  'Burger @ rs.100',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox3,
                  onChanged: (value) {
                    setState(() {
                      cheakbox3 = value!;
                      if (cheakbox3 == true) {
                        amount += coffe;
                      } else {
                        amount -= coffe;
                      }
                    });
                  },
                ),
                Text(
                  'Coffe @ rs.70',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox4,
                  onChanged: (value) {
                    setState(() {
                      cheakbox4 = value!;
                      if (cheakbox4 == true) {
                        amount += cake;
                      } else {
                        amount -= cake;
                      }
                    });
                  },
                ),
                Text(
                  'cake @ rs.300',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox5,
                  onChanged: (value) {
                    setState(() {
                      cheakbox5 = value!;
                      if (cheakbox5 == true) {
                        amount += icecream;
                      } else {
                        amount -= icecream;
                      }
                    });
                  },
                ),
                Text(
                  'Ice-cream @ rs.150',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                },
                child: Text('Done Order')),
            SizedBox(
              height: 30,
            ),
            Text('Your total bill amount  is ${amount}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue)),
          ]),
        ),
      ),
    );
  }
}

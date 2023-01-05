import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: floating_button_sizetype(),
    );
  }
}

class floating_button_sizetype extends StatefulWidget {
  const floating_button_sizetype({Key? key}) : super(key: key);

  @override
  State<floating_button_sizetype> createState() =>
      _floating_button_sizetypeState();
}

class _floating_button_sizetypeState extends State<floating_button_sizetype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Simple Button ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.navigation),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Small Button',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              FloatingActionButton.small(
                onPressed: () {},
                child: Icon(Icons.navigation),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Large Button',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              FloatingActionButton.large(
                onPressed: () {},
                child: Icon(Icons.navigation),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Extended Button',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text('ok',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
                icon: Icon(Icons.navigation),
              )
            ],
          )
        ],
      )),
    );
  }
}

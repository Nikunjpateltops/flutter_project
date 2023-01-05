import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: floating_extended(),
    );
  }
}

class floating_extended extends StatefulWidget {
  const floating_extended({Key? key}) : super(key: key);

  @override
  State<floating_extended> createState() => _floating_extendedState();
}

class _floating_extendedState extends State<floating_extended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Floating action ',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 30, color: Colors.black),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Builder(
              builder: (context) {
                return FloatingActionButton.extended(
                  onPressed: () {
                    setState(() {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Wel come!!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),duration: Duration(seconds: 2),
                          )
                      );
                    });
                  },
                  label: Icon(Icons.navigation),
                  backgroundColor: Colors.black,
                );
              }
            ),
          )
        ],
      )),
    );
  }
}

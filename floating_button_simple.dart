import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: floating_action_button(),
    );
  }
}

class floating_action_button extends StatefulWidget {
  const floating_action_button({Key? key}) : super(key: key);

  @override
  State<floating_action_button> createState() => _floating_action_buttonState();
}

class _floating_action_buttonState extends State<floating_action_button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Floating action button',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 50,
          ),
          Container(
            child: Builder(
              builder: (context) {
                return FloatingActionButton(
                  splashColor: Colors.black,
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
                  child: Icon(Icons.navigation),
                  backgroundColor: Colors.blue,
                );
              },
            ),
          )
        ],
      )),
    );
  }
}

/*
FloatingActionButton(
                splashColor: Colors.black,
                onPressed: () {},
                child: Icon(Icons.navigation),
                backgroundColor: Colors.blue,
              )
 */

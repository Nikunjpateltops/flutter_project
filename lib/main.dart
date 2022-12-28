import 'package:flutter/material.dart';
import 'package:login_page_project/password.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login_page_project',
      home: login_page(),
    );
  }
}

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login_page'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: NetworkImage(
                    'https://miro.medium.com/max/700/1*rb3JJRN2YfybijTcxQiiUQ.png'),
                width: 250),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Email',
                icon: Icon(Icons.email),
                //errorText: 'please enter valid email address',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Password',
                icon: Icon(Icons.password),
                //errorText: 'please enter valid Password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Text(
                'Forgot Password ?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => forgot(),));
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => forgot(),));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ))
          ],
        ),
      )),
    );
  }
}

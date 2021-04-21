import 'package:flutter/material.dart';
import 'package:profile_app/page.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text(
                      'Who am i?',
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Oladokun Samuel Tobi',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Container(
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'assets/images/main.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Welcome to Psalmzy Profile UI , i am a '
                    'web developer, mobile app developer,.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => page()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 50,
                      width: 270,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Hire Me',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already a member?'),
                      Text(
                        'Log in here',
                        style: TextStyle(
                          color: Colors.yellow[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

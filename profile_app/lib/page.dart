import 'package:flutter/material.dart';

class page extends StatefulWidget {
  page({Key key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: PageBody(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.share,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 20,
          currentIndex: _currentindex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedFontSize: 20,
          iconSize: 25,
          onTap: (value) {
            setState(() {
              _currentindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: ('Chat'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ('Psalmzy'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageBody extends StatefulWidget {
  PageBody({Key key}) : super(key: key);

  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('assets/images/pic.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Oladokun Samuel',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Front-End Developer',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Power Level 5',
                            // style: TextStyle(color: Colors.orange[900]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 20),
          child: Container(
            child: Text(
              'i have 2 years experience as am a mobile and web developer, i code in flutter, html,css js, php, reactjs, \n\n Contact me : 09057144167, Psalmwelloladokun@gmail.com',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Center(
            child: Center(
              child: Container(
                child: Text(
                  'My Skills',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset('assets/images/html5.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset('assets/images/cs3.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset('assets/images/js.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset(
                      'assets/images/react.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset('assets/images/word.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset('assets/images/two.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

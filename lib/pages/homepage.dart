import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smart_room/utils/cardControl.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_smart1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 100,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 25,
              )),
              Text('Good Day Wahyu',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  )),
              Text('TAKE CONTROL',
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 15),
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/logo.png',
                  scale: 20,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                ],
              ),
            ),
            Divider(
              height: 2,
              color: Colors.blue[200],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                  CardControl(),
                  CardControl(),
                  CardControl(),
                  CardControl(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.blue[900],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            )
          ],
        ),
      ),
    );
  }
}

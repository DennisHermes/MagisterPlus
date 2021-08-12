import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:myapp/UI/cijfers.dart';

class agenda extends StatefulWidget {
  const agenda({Key? key}) : super(key: key);

  @override
  _agendaState createState() => _agendaState();
}

class _agendaState extends State<agenda> {
  BannerAd banner;
  @override
  Void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffa8ff78),
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.check_box_outlined), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.grade_outlined),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => cijfers()));
                }),
            IconButton(icon: Icon(Icons.mail_outline), onPressed: () {}),
            Spacer(),
            IconButton(
                icon: Icon(Icons.person_outline_outlined), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.local_activity_outlined), onPressed: () {}),
            IconButton(icon: Icon(Icons.book_outlined), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.calendar_today,
            color: Colors.black,
            size: 30,
          ),
          backgroundColor: Colors.white,
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Agenda",
                          style: TextStyle(
                            fontFamily: "Helvetica",
                            fontWeight: FontWeight.bold,
                            fontSize: 38,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            size: 38,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 70),
              child: ListView(
                padding: EdgeInsets.only(left: 20),
                children: getMagisterAgenda(),
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

List<Widget> getMagisterAgenda() {
  List<Widget> cards = [];
  for (int i = 0; i < 10; i++) {
    cards.add(agendaCard());
  }
  return cards;
}

Widget agendaCard() {
  return Container(
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,
      boxShadow: [
        new BoxShadow(
          color: Colors.black.withOpacity(0.50),
          blurRadius: 5.0,
        ),
      ],
    ),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '10:30 - 10:15',
                  style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 5),
        Row(children: <Widget>[
          Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: Colors.black.withOpacity(0.50),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "1",
                  style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Text(
            "  ECO - BRO - V5B (C107)",
            style: TextStyle(
              fontFamily: "Helvetica",
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          )
        ]),
      ],
    ),
  );
}

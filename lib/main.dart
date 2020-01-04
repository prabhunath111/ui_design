import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'button.dart';

void main() => runApp(MaterialApp(
  title: 'ui_design',
  debugShowCheckedModeBanner: false,
  home: UiDesign(),
));

class UiDesign extends StatefulWidget {
  @override
  _UiDesignState createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SafeArea(
          child: Scaffold(
            key: _scaffoldKey,

/* appBar: AppBar(
elevation: 0.0,
backgroundColor: Colors.transparent,
title: Text('Profile'),
leading: IconButton(
padding: EdgeInsets.all(15.0),
icon: new Image.asset('images/drawer.png'),
onPressed: () => _scaffoldKey.currentState.openDrawer()),
centerTitle: true,
),*/

            drawer: new Drawer(
                child: ListView(children: <Widget>[
                  DrawerHeader(
                    child: Text('Drawer Header'),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                        Colors.deepOrange,
                        Colors.orangeAccent,
                      ]),
                    ),
                  ),
                  ListTile(
                    title: Text('Item 1'),
                    onTap: () {},
                  ),
                ])),
            backgroundColor: Colors.black,
            body: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/theme.png'),
                            alignment: Alignment.topCenter)),
                  ),
                ),
                Positioned(
                  child: AppBar(
                    title: Text("Profile",
                        style: TextStyle(
                            fontSize: 11.0, fontStyle: FontStyle.normal)),
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
//                    elevation: 2.0,
                    brightness: Brightness.light,
                    leading: IconButton(
                        padding: EdgeInsets.all(15.0),
                        icon: new Image.asset('images/drawer.png'),
                        onPressed: () =>
                            _scaffoldKey.currentState.openDrawer()),
                    actions: <Widget>[
/* IconButton(
icon: Icon(Icons.favorite),
onPressed: () {},
tooltip: 'Share',
),*/
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80.0, right: 20.0, left: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/chat.png'),
                          alignment: Alignment.topLeft),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'images/heart.png',
                              ),
                              alignment: Alignment.topRight)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 55.0),
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/riti.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                new Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 160.0),
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Anushka Rai',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Maiami, Florida, USA',
                            style: TextStyle(fontSize: 9.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 2.0),
                          child: Text(
                            'Graphic & UI Designer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10.0,
                                color: Colors.blueAccent),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(1.0),
                                margin: EdgeInsets.only(top: 9.0, right: 4.0),
                                child: Icon(
                                  Icons.brightness_1,
                                  size: 10.0,
                                  color: Colors.green,
                                ),
                              ),
                              Container(
//                                padding: EdgeInsets.all(2.0),
                                margin: EdgeInsets.only(top: 9.0),
                                child: Text(
                                  'Available now',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 12.0, right: 4.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 12.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0, right: 4.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 12.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0, right: 4.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 12.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0, right: 4.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 12.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0, right: 4.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blue,
                                size: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: 2.0),
                              margin: EdgeInsets.only(top: 12.0, right: 8.0),
                              child: CircularPercentIndicator(
                                header: Container(
                                    margin: EdgeInsets.only(bottom: 6.0),
                                    child: Text('Jobs done',
                                        style: TextStyle(fontSize: 9.0))),
                                radius: 50.0,
                                startAngle: 0,
                                percent: 0.8,
                                animation: true,
                                backgroundColor: Colors.transparent,
                                lineWidth: 3.0,
                                progressColor: Colors.blue,
                                center: Text("80%"),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8.0),
                              margin: EdgeInsets.only(top: 12.0, right: 8.0),
                              child: CircularPercentIndicator(
                                header: Container(
                                    margin: EdgeInsets.only(bottom: 6.0),
                                    child: Text('Satisfaction',
                                        style: TextStyle(fontSize: 9.0))),
                                radius: 50.0,
                                startAngle: 0,
                                percent: 0.90,
                                animation: true,
                                backgroundColor: Colors.transparent,
                                lineWidth: 3.0,
                                center: Text("90%"),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 30.0, left: 65.0, right: 65.0),
                          height: 1.0,
                          color: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40.0, top: 16.0),
                          alignment: Alignment.topLeft,
                          child: Text('About',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 9.0)),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 40.0, top: 10.0, right: 50.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500's when an unknown "
                                "printer took a gallery of type and scrambled it to make a type specimen book. it has survived not "
                                "only five centuries, but also the leap electronic"
                                " remaining esssentially unchanged.",
                            style: TextStyle(fontSize: 8.0),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 13.0),
                          child: Text(
                            "Share Anushka's Profile",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 2.0),
                          child: Text(
                            'Report Anushka',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8.0),
                          ),
                        ),
                        SizedBox(
                          height: 11.0,
                        ),
                        RaisedGradientButton(
                          child: Text(
                            'Hookme Up',
                            style: TextStyle(color: Colors.white),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.pink,
                              Colors.black],
                          ),
                          onPressed: () {
                            print('button clicked');
                          },
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

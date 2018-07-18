import 'package:flutter/material.dart';
import 'intro_page_item.dart';
import 'intro_page_view.dart';
import '../login/login.dart';

class WelcomePage extends StatelessWidget {
  navToAnotherPage(context, x) {
    print(x.id);
    print(this);
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => new AnotherPage(id: x.id),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new Scaffold(
          backgroundColor: Colors.white10,
            body: new Column(children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(top: 20.0, bottom: 5.0),
            child: new SliderView(
              slideItems: <SlideItem>[
                new SlideItem(
                    title: 'Writing things together is what we do best!',
                    category: 'COLLABORATION',
                    imageUrl: 'assets/1.png',
                    id: 1),
                new SlideItem(
                    title: 'Occasionally wearing pants is a good idea.',
                    category: 'CULTURE',
                    imageUrl: 'assets/2.png',
                    id: 2),
                new SlideItem(
                    title: 'We might have the best team spirit ever.',
                    category: 'SPIRIT',
                    imageUrl: 'assets/3.png',
                    id: 3),
              ],
              viewportFraction: 1.00,
              height: 500.0,
              onTapUp: navToAnotherPage,
            ),
          ),
          new Container(
              width: double.infinity,
              child: new Column(
                children: <Widget>[
                  new Container(
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                    width: double.infinity,
                    child: new RaisedButton(
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      color: Colors.orange,
                      elevation: 4.0,
                      splashColor: Colors.blueGrey,
                      onPressed: () {
                        // Perform some action
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (BuildContext context) => new LoginPage(),
                        ));
                      },
                    ),
                  ),
                  new Container(
                    margin:
                        new EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                    width: double.infinity,
                    child: new RaisedButton(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      color: Theme.of(context).accentColor,
                      elevation: 4.0,
                      splashColor: Colors.blueGrey,
                      onPressed: () {
                        // Perform some action
                      },
                    ),
                  )
                ],
              ))
        ])));
  }
}

class AnotherPage extends StatefulWidget {
  AnotherPage({this.id});

  final int id;

  @override
  _AnotherPageState createState() => new _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Center(
        child: new Text(widget.id.toString()),
      ),
    );
  }
}

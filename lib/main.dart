import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyHomePage(title: 'Contoh pembelajaran'),
      // initialRoute: '/',
      routes: {
        '/' : (context) => new MyHomePage(title: 'Contoh pembelajaran'),
        '/about' : (context) => new MyAboutPage(title: 'Contoh pembelajaran 2'),
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        alignment: Alignment.center,
        // color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hallo apa kabar',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Arial',
              )
            ),
            RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/about');
          },
          child: Text('Tap Untuk ke AboutPage'),
        ),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class MyAboutPage extends StatefulWidget {
  MyAboutPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  AboutPage createState() => AboutPage();
}

class AboutPage extends State<MyAboutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        alignment: Alignment.center,
        // color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hallo Dunia',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Arial',
              )
            ),
          ],
        ),
      ),
    );
  }
}




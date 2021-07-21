import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demoapp/account_page.dart';
import 'package:demoapp/cart_page.dart';
import 'package:demoapp/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StartPage());
  }
}

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {
            _controller.jumpToPage(index);
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.person),
            Icon(Icons.shopping_bag),
          ]),
      body: PageView(
        controller: _controller,
        children: [HomePage(), AccountPage(), CartPage()],
      ),
    );
  }
}

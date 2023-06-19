import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  int selectedIndex = 0;
  static List<Widget> widgetOptions = <Widget>[
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: Container (
    decoration: BoxDecoration(
    color: Colors .white,
      boxShadow: [BoxShadow(
      blurRadius: 20,
      color: Colors.black.withOpacity(0.1),
    ),],),

    child: SafeArea(
       child: Padding(
    padding:EdgeInsets.symmetric(horizontal:15,vertical:8),
      child: GNav(
       rippleColor: Colors.grey[300]!,
       hoverColor: Colors. grey[100]!,
       gap:8,
       activeColor: Colors.white,
    iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), duration: Duration (milliseconds: 400),
        tabBackgroundColor: Colors.redAccent, color: Colors.black,

    tabs: [
    GButton(icon: Icons.home, text: "Home"),
    GButton(icon: Icons.shopping_cart , text: "Cart"),
    GButton(icon: Icons.thumb_up, text:"Wishlist"),
    GButton (icon: Icons.account_circle, text: 'Account')
    ],
    selectedIndex: selectedIndex,
    onTabChange: (index) {
    setState(() {
       selectedIndex= index;
    });},




    ),
    ),
      )


    )
    );
  }
}
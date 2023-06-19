import 'package:flutter/material.dart';

import 'drawerHeader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Drawer",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: SafeArea(child:Drawer(
        child: Column(
          children: [
            Container(
              height: 10,
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back, color: Colors.black,))
                ],
              ),
            ),
            Expanded(  // Wrap the Column with Expanded
              child: SingleChildScrollView(  // Wrap the SingleChildScrollView around the Column
                child: Column(
                  children: [
                    SizedBox(height: 15),

                    Container(
                        height: 180,
                      child: Header(
                        image: AssetImage('assets/profile.jpg'),
                      ),
                    ),
                  SizedBox(height: 10),
                    Container(
                        color: Colors.grey.shade200,
                        height: 1,
                        width: 220
                    ),


                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: lst.length,
                      itemBuilder: (context, index) {
                        final item = lst[index];
                        return item;
                      },
                    ),
                    SizedBox(height: 25),

                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: lst2.length,
                      itemBuilder: (context, index) {
                        final item = lst2[index];
                        return item;
                      },
                    ),
                    SizedBox(height: 20),
                    Container(
                        color: Colors.grey.shade200,
                        height: 1,
                        width: 220
                    ),
                    SizedBox(height: 40),
                    RowItem(name: "Log out", icon: Icons.login),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ))
    );
  }
}


import 'package:flutter/material.dart';
import 'components.dart';
import "row_returner.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "HEY ",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87),
            ),
            Text(
              "Dhairy",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade400),
            ),
            SizedBox(width: 90,),
            Icon(Icons.account_circle_outlined, size: 30,)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintText: "Search doctor, medicines etc",
                      fillColor: Colors.grey.shade200),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  "Top Doctors",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: [
                cards_giver(
                    Icon(
                      Icons.medical_services_outlined,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.red.shade700,
                    ),
                    Colors.purple,
                    Colors.red.shade700,
                    " Doctor Available",
                    "      Registered \n        Patients"),
                SizedBox(
                  height: 20,
                ),
                cards_giver(
                    Icon(Icons.accessibility_new, color: Colors.red.shade700),
                    Icon(Icons.access_time_outlined, color: Colors.purple),
                    Colors.red.shade700,
                    Colors.purple,
                    "      Appointed \n        Patients",
                    "     OPD Timing")
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 25),
                child: Text("Patients in Queue",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w600))),
            Container(
                margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                padding:EdgeInsets.symmetric(vertical: 35) ,
                height: 600,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade300,
                ),
                    child: Container(
                        padding: EdgeInsets.only(left: 25),
                        child:Table(
                      border: TableBorder.symmetric(inside: BorderSide.none),
                      children: [
                        TableRow(
                          children: [
                            TableCell(
                              child: Center(
                                child: Text("Patient's Name", style: TextStyle(fontWeight: FontWeight.w600),),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text("      Department", style: TextStyle(fontWeight: FontWeight.w600),),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text("Age", style: TextStyle(fontWeight: FontWeight.w600),),
                              ),
                            ),
                          ],
                        ),
                        space(),
                        row_returner("Akash", "ENT", "20"),
                        space(),
                        row_returner("Dhairy", "ENT", "25"),
                        space(),
                        row_returner("Aditya", "ENT", "21"),
                        space(),
                        row_returner("Mayank", "ENT", "23"),
                        space(),
                        row_returner("Abhishek", "ENT", "23"),
                        space(),
                        row_returner("Gourav", "ENT", "22"),

                      ],
                    ))
            )
          ],
        ),
      ),
    );
  }
}

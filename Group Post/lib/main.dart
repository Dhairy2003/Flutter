import 'package:flutter/material.dart';
import 'package:group_post/FilterScreen.dart';
import 'package:group_post/constants.dart';
import 'HomeBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //Media Query Command , To be used for Responsive design
    MediaQueryData qd;
    qd = MediaQuery.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: FilterPage(qd:qd)   // Code for this class is down below
    );
  }
}

class FilterPage extends StatefulWidget {

  final MediaQueryData qd;
  const FilterPage({required this.qd,Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("assets/bg.png"),
      //         fit: BoxFit.cover
      //     )
      // ),
      child: Scaffold(
        // backgroundColor: Colors.transparent,

        appBar: AppBar(
          toolbarHeight: widget.qd.size.height * 0.0825,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title:Text("Filters", style: heading,),
          centerTitle: true,
          leading: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back, color: dfcolor,),),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.grey,))],
        ),
          floatingActionButton: Container(
            padding: EdgeInsets.symmetric(horizontal:widget.qd.size.width * 0.1),
            width: widget.qd.size.width,
            child: Row(
              children: [
                Container(
                  height: 48, // Set the desired height for the Refresh button
                  child: FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Icon(Icons.refresh, color: Colors.blueAccent),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 48, // Set the desired height for the Apply Filter button
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FilterScreen(qd: widget.qd)),
                        );
                      },
                      child: Text('Apply Filter', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            )

          ),
       body:

       SingleChildScrollView(child:HomeBody(qd: widget.qd))  // refers to class attribute, class in HomeBody.dart

      ),
    );
  }
}

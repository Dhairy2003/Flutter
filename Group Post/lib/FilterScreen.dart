import 'package:flutter/material.dart';
import 'package:group_post/Post.dart';
import 'categories.dart';
import 'categoryBuilder.dart';
import 'options.dart';

class FilterScreen extends StatefulWidget {
  final MediaQueryData qd;
  const FilterScreen({required this.qd,Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          padding: EdgeInsets.symmetric(horizontal:widget.qd.size.width * 0.1),
          width: widget.qd.size.width,
          child: Row(
                children: [
                   Container(
                         height: 48,
                     child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(8.0)),),
                       child: Icon(Icons.refresh, color: Colors.blueAccent),),),
                SizedBox(width: 10),
                Expanded(
                child: Container(
                height: 48,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,),
                child: TextButton(
                onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => PostPage(qd: widget.qd)),);},
                child: Text('Apply Filter', style: TextStyle(color: Colors.white)),
                ),),),
                ],
          )

                ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: widget.qd.size.width * 0.02),
            child: Column(
                children: [
            SizedBox(height: widget.qd.size.height * 0.04),
            Container(
              padding: EdgeInsets.symmetric(horizontal: widget.qd.size.width * 0.02),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.blueAccent),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Categories',
                  hintStyle: TextStyle(color: Colors.blue.shade700),
                ),
              ),
            ),
            SizedBox(height: widget.qd.size.height * 0.02),

                  Wrap(
                      children:[
                        GridView.count(
                          crossAxisCount: widget.qd.size.shortestSide < 600 ? 4 : 5 ,
                          padding: EdgeInsets.symmetric(horizontal: widget.qd.size.width * 0.008),
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          childAspectRatio: 1,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: List.generate(products.length, (index) {
                            return CategoryBuilder(
                                qd: widget.qd,
                                p: filterproducts[index]
                            );
                          }),
                        ),

                      ]),
                  SizedBox(height: widget.qd.size.height * 0.04),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: widget.qd.size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Location',
                        hintStyle: TextStyle(color: Colors.blue.shade700),
                      ),
                    ),
                  ),
                  SizedBox(height: widget.qd.size.height * 0.02),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: widget.qd.size.width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.my_location_sharp),
                        border: InputBorder.none,
                        hintText: 'Bhopal, India',
                        hintStyle: TextStyle(color: Colors.blue.shade700),
                      ),
                    ),
                  ),
                  SizedBox(height: widget.qd.size.height * 0.35),

            ]),
          ),
        ),
      )
    );
  }
}

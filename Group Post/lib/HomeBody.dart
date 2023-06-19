import 'package:flutter/material.dart';
import 'package:group_post/Groups.dart';
import 'package:group_post/constants.dart';
import 'categories.dart';
import 'categoryBuilder.dart';


class HomeBody extends StatefulWidget {
  final MediaQueryData qd;
  const HomeBody({required this.qd, Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: widget.qd.size.width * 0.03),
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
                    physics: NeverScrollableScrollPhysics(), // Disable GridView scrolling
                    shrinkWrap: true, // Allow the GridView to occupy only the necessary height
                    children: List.generate(products.length, (index) {
                      return CategoryBuilder(
                        qd: widget.qd,
                        p: products[index]
                      );
                    }),
                  ),

              ]),

            SizedBox(height: widget.qd.size.height * 0.02),
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
            SizedBox(height: widget.qd.size.height * 0.05),
            Container(child: Text("Filiter Groups", style: heading,),),
            SizedBox(height: widget.qd.size.height * 0.02),
    SingleChildScrollView(
      child: ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: g.length,
        itemBuilder: (context, index) {
            Groups group = g[index];
           return Container(
             decoration: BoxDecoration(
               border: Border.all(color: Colors.grey.shade100),
               borderRadius: BorderRadius.circular(15),
             ),
             margin: EdgeInsets.symmetric(vertical: 5),
             child: ListTile(
                 leading: CircleAvatar(
                     child: group.i,),

                title: Text(group.title),
                subtitle: Text('${group.members} members'),
                trailing: ElevatedButton(  onPressed: () {},
                child: Text('Join'),
             ),
             ),
           );
           },
      ),
    ),
            SizedBox(height: widget.qd.size.height * 0.3)



          ],
        ),
      ),
    );
  }
}


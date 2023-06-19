import 'package:flutter/material.dart';
String Lorem = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

class Postcards {
  final String ?i1;
  final String ?i2;
  final String Community_Name, Posted_by, descr;

  Postcards(

      {
         this.i1,
         this. i2,
        required this.Community_Name,
        required this.Posted_by,
        required this.descr,
      });
}

List<Postcards> postcards = [
  Postcards(
    Community_Name: "Creative Design Community 1",
    Posted_by: "Watson 1",
    descr: Lorem,
    i1: "images/forest.jpg",
    i2: "images/forest.jpg"

  ),
  Postcards(
      Community_Name: "Creative Design Community 1",
      Posted_by: "Watson 1",
      descr: Lorem,
      i1: "images/forest.jpg",
      i2: "images/forest.jpg"

  ),
  Postcards(
      Community_Name: "Creative Design Community 1",
      Posted_by: "Watson 1",
      descr: Lorem,
      i1: "images/forest.jpg",
      i2: "images/forest.jpg"

  ),

];



class PostCardBuilder extends StatelessWidget {
  final Postcards p;

  const PostCardBuilder({required this.p, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  // Replace with profile picture
                  backgroundImage: AssetImage("${p.i1}"),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        p.Community_Name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Posted by ${p.Posted_by}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              alignment: Alignment.centerLeft,
             child:Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: p.descr,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
            ),

             // Show an empty SizedBox if neither image is available
            SizedBox(height: 16),
            if (p.i2 != null)
              Image.asset(p.i2!) // Display the second image if available
            else
              SizedBox(),
            SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.favorite_border, color: Colors.black,),
                ),
                SizedBox(width: 8),
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.comment_outlined,),
                ),
                SizedBox(width: 8),
                IconButton(
                onPressed: () {
               },
                  icon: Icon(Icons.send,),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}





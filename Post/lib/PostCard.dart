import 'package:flutter/material.dart';
String Lorem = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

class Postcards {
  final String ?i1;
  final String ?i2;
  final String Community_Name, Posted_by, descr;
  final int ?likes;
  final int? comments;
  final String? postedTime;



  Postcards(

      {
         this.i1,
         this. i2,
        required this.Community_Name,
        required this.Posted_by,
        required this.descr,
        required this.likes,
        required this.comments,
        required this.postedTime,


      });
}

List<Postcards> postcards = [
  Postcards(
    Community_Name: "Creative Design Community 1",
    Posted_by: "Watson 1",
    descr: Lorem,
    i1: "images/forest.jpg",
    i2: "images/forest.jpg"
    ,likes: 400,
    comments: 20
   , postedTime: "07:02 am"


  ),
  Postcards(
      Community_Name: "Creative Design Community 1",
      Posted_by: "Watson 1",
      descr: Lorem,
      i1: "images/forest.jpg",
      i2: "images/forest.jpg"
      ,likes: 400,
      comments: 20
      , postedTime: "07:02 am"

  ),
  Postcards(
      Community_Name: "Creative Design Community 1",
      Posted_by: "Watson 1",
      descr: Lorem,
      i1: "images/forest.jpg",
      i2: "images/forest.jpg"
      ,likes: 400,
      comments: 20
      , postedTime: "07:02 am"

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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.shade200,
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
                      SizedBox(height: 4,),
                      Text(
                        'Posted by ${p.Posted_by}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        'Yesterday ${p.postedTime}',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey.shade400,
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
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
            ),

             // Show an empty SizedBox if  image is not available
            SizedBox(height: 16),
            if (p.i2 != null)
              Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(p.i2!),
                  ),) // Display the  image if available
            else
              SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {

                      },
                      icon: Icon(Icons.thumb_up_outlined, color: Colors.black,),
                    ),
                    Text("${p.likes}"),
                    SizedBox(width: 4),
                    IconButton(
                      onPressed: () {

                      },
                      icon: Icon(Icons.mode_comment_outlined,),
                    ),
                    Text("${p.comments}"),
                    SizedBox(width: 4),
                    IconButton(
                      onPressed: () {
                      },
                      icon: Icon(Icons.send,),
                    ),



                  ],
                ),

                   Row(
                    children: [
                      IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.bookmark_border_outlined,),
                      ),

                    ],
                  ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}





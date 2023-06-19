import 'package:flutter/material.dart';
import 'package:group_post/options.dart';

import 'PostCard.dart';
import 'constants.dart';


class PostPage extends StatefulWidget {
  final MediaQueryData qd;
  const PostPage({required this.qd, Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group Post", style: heading),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.grey),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.qd.size.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.blue.shade700),
                    ),
                  ),
                ),
                Options(qd: widget.qd),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: postcards.length,
                  itemBuilder: (context, index) {
                    return PostCardBuilder(p: postcards[index]);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

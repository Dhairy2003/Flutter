import 'package:flutter/material.dart';
import 'Post.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MediaQueryData qd;
    qd = MediaQuery.of(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "Post",
        routes: {
          "Post": (context) => PostPage(qd: qd),
        }


    );
  }
}

import 'dart:convert';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()

  ));






}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


List <dynamic> users=[];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text("API TESTING"),
      ),
        floatingActionButton : FloatingActionButton(
        onPressed: datagetter,
    ),

      body: ListView.builder(itemCount: users.length,
          itemBuilder:(context, index){
          final user = users[index];
          final email = user['email'];
          return ListTile(
            leading: CircleAvatar(child:Text('${index+1}')),
            title: Text(email),
          );




          } ) ,


    );
  }
}

void datagetter() async{
  const url = "https://randomuser.me/api/?results=2";
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final body = response.body;
  final json = jsonDecode(body);
  users = json['results'];

}
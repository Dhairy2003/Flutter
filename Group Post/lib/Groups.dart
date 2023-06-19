import 'package:flutter/material.dart';


class Groups {
  final int id, members;
  final String title;
  final Image? i;
  Groups(

      {
        required this.id,
        required this.members,
        required this.title,
        this.i,
      });
}

List<Groups> g = [
  Groups(
    title: "Web Design Form",
    members: 235201,
    id: 1,),
  Groups(
    title: "Ui/Ux Designer",
    members: 1010501,
    id: 2,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Ui/Ux Designer",
    members: 1010501,
    id: 2,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),

  Groups(
    title: "Ui/Ux Designer",
    members: 1010501,
    id: 2,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),

  Groups(
    title: "Ui/Ux Designer",
    members: 1010501,
    id: 2,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),
  Groups(
    title: "Community of Design",
    members: 40250,
    id: 3,),


];


class GroupList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: g.length,
      itemBuilder: (context, index) {
        Groups group = g[index];
        return ListTile(
          leading: CircleAvatar(
            child: group.i,
          ),
          title: Text(group.title),
          subtitle: Text('${group.members} members'),
          trailing: ElevatedButton(
            onPressed: () {
              // Handle join button press
            },
            child: Text('Join'),
          ),
        );
      },
    );
  }
}


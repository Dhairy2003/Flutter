import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  final ImageProvider image;

  Header({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 4),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue,
                width: 4.0,
              ),
            ),
            child: CircleAvatar(
              radius: 45.0,
              backgroundImage: image,
            ),
          ),
          SizedBox(height: 2,),
          Text("Emilia Clerk", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          SizedBox(height: 2,),
          Text("@emilia_clerk"),
        ],
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final String name;
  final IconData icon;

  const RowItem({required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent,) ,
        title: Text(name),
        trailing: Icon(Icons.arrow_forward_ios_rounded,),


      ),
    );
  }
}


List <RowItem> lst= [
  RowItem(name: "Edit Profile", icon: Icons.edit),
  RowItem(name: "Network", icon: Icons.network_check_outlined),
  RowItem(name: "Photos/Videos", icon: Icons.photo_library_sharp),
  RowItem(name: "Group", icon: Icons.group),
  RowItem(name: "Your Privacy", icon: Icons.privacy_tip_outlined),
  RowItem(name: "Search Profile", icon: Icons.search),
];


List <RowItem> lst2 =[
  RowItem(name: "Settings", icon: Icons.settings),
  RowItem(name: "About Us", icon: Icons.info_outline),
  RowItem(name: "Language", icon: Icons.translate),
];

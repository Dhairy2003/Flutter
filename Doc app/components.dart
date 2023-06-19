import 'package:flutter/material.dart';
class cards_giver extends StatelessWidget {
  final Color color1;
  final  Color color2;
  final String s1;
  final String s2;
  final Icon i1;
  final Icon i2;
  const cards_giver(this.i1,this.i2,this.color1, this.color2,this.s1, this.s2,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Row(
          children:[
          Stack(
            children:[ Container(
              height: 150,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: color1,
              ),
            ),
             Positioned(
               top:12,
               left: 65,
               child: Container(
               decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.white
               ),
                 height: 58,
                 width: 90,
               ),
             ),
              Positioned(
                top:12,
                left: 4,
                child: Container(
                  child: i1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  height: 45,
                  width: 55,
                ),
              ),
              Positioned(
                  top: 95,
                  left:10,
                  child:
                Text(s1, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),)
              )
            ]),
            SizedBox(width: 10,),
            Stack(
                children:[ Container(
                  height: 150,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: color2,
                  ),
                ),
                  Positioned(
                    top:12,
                    left: 65,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      height: 58,
                      width: 90,
                    ),
                  ),
                  Positioned(
                    top:12,
                    left: 4,
                    child: Container(
                      child: i2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      height: 45,
                      width: 55,
                    ),
                  ),
                  Positioned(
                      top: 95,
                      left:10,
                      child:
                      Text(s2, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),)
                  )
                ]),

        ]
        ),



      ],



    );
  }
}

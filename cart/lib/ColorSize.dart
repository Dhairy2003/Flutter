import "package:flutter/material.dart";
import "body.dart";
import "package:new_cart/Product.dart";

 class ColorSize extends StatelessWidget {
   final double sh;
   final double sw;
   final Product product;
   const ColorSize(this.sh, this.sw,this.product,{Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Row(

       children: [
         Expanded(
           child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:[ Text("Color", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                 SizedBox(height: sh*0.021),
                 Row(  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     ColorDot(sh, sw, Colors.blueAccent, selected: true,),
                     ColorDot(sh, sw, Colors.redAccent),
                     ColorDot(sh, sw, Colors.purple,)
                   ],)


               ]),
         ),
         RichText(text: TextSpan(
             children: [
               TextSpan(text: "Size\n", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey) ),
               TextSpan(text: "${product.size} cm", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: Colors.grey))
             ]
         ))

       ],
     );
   }
 }

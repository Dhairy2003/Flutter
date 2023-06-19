import "package:flutter/material.dart";
import "package:new_cart/Product.dart";
import "constants.dart";
import "body.dart";

class screen extends StatefulWidget {
  final Product product;
  final double sw;
  final double sh;
  const screen(this.sw, this.sh,this.product,{Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product.color,
        appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.transparent,
        leading: IconButton(onPressed:()=>Navigator.pop(context), icon : Icon(Icons.arrow_back, size: 32,color: Colors.white,)),
          actions: [
            IconButton(onPressed:(){}, icon: Icon(Icons.search,size: 32,color: Colors.white,)),
            SizedBox(
              width:widget.sw*0.014 ,
            ),
            IconButton(onPressed:(){}, icon: Icon(Icons.shopping_cart_outlined,size: 32,color: Colors.white,)),
            SizedBox(
              width:widget.sw*0.020 ,
            ),
          ],
    ),

      body: Body(widget.sw, widget.sh, widget.product),
    );
  }
}

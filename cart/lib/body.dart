import "package:flutter/material.dart";
import "package:new_cart/ColorSize.dart";
import "package:new_cart/Product.dart";
import "package:new_cart/constants.dart";
class Body extends StatefulWidget {
  final double sh;
  final double sw;
  final Product product;
  const Body(this.sh, this.sw,this.product,{Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(child: Column(
        children: [
          SizedBox(height: size.height,
              child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal:widget.sh*0.08, vertical: widget.sh*0.22),
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      height: widget.sh*1.35,
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ColorSize(widget.sh, widget.sw, widget.product),
                          SizedBox(height: widget.sh*0.05,),
                          Text(widget.product.description, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.grey )),
                          SizedBox(height: widget.sh*0.05,),
                          Row(
                              children: [CartCounter(widget.sh, widget.sw),



                          ]),
                          SizedBox(height: widget.sh*0.05,),

                          last(widget.sw, widget.product)


                        ],),


                    ),
                    ProductTile(widget.sh, widget.sw, product: widget.product)




                  ],
              )
          )
        ]
    )
    );
  }
}


// SECOND CLASS
class ProductTile extends StatefulWidget {
  final double sw;
  final double sh;
  final Product product;
  const ProductTile(this.sh, this.sw,{required this.product,Key? key}) : super(key: key);

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.sw*0.024),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height: widget.sh*0.029),
              Text("Aristocrat Hand Bag", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white)),
              SizedBox(height: widget.sh*0.021),
              Text("${widget.product.title}", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white ),),
              Row(

                children: [
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text:"Price\n", style:TextStyle(fontSize: 18, fontWeight: FontWeight.w500 , color: Colors.white) ),
                        TextSpan(text: "\$${widget.product.price}", style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold , color: Colors.white))

                      ]
                  )),
                  SizedBox(width: widget.sw*0.043),
                  Expanded(child: Image.asset(widget.product.image, height: widget.sh*0.54,fit: BoxFit.fill,))
                ],
              )



            ],

          )
      );
  }
}
//THIRD CLASS
class ColorDot extends StatelessWidget {
  final double sw;
  final double sh;
  final Color c;
  final bool selected;
  const ColorDot(this.sh, this.sw,this.c,{this.selected=false,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(sh*0.008),
      height: sh*0.06,
      width: sw *0.05,
      decoration: BoxDecoration(

          shape: BoxShape.circle,
          border: Border.all(
            color: selected ? c : Colors.transparent ,
          )
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: c ,
        ),
      ),
    );
  }
}
class CartCounter extends StatefulWidget {
  final double sw;
  final double sh;
  const CartCounter(this.sw, this.sh,{Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int items= 0;
  String pri = "0";

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[

        SizedBox(
          width: widget.sw*0.15,
          height: widget.sh*0.03,
        child: OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
            ),
            onPressed: () {
              setState(() {
                items--;

                items<0 ? items=0:  items<10 ? pri= "0" + items.toString(): pri= items.toString();
              });
            },
            child: Icon(Icons.remove)

        )

        ),
        SizedBox(width: widget.sh*0.01,),

        Text("${pri}", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black )),


        SizedBox(width: widget.sh*0.01,),
    SizedBox(
    width: widget.sw*0.15,
    height: widget.sh*0.03,
    child: OutlinedButton(
    style: ButtonStyle(
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
    ),
    onPressed: () {
      setState(() {
        items++;
        items<0 ? items=0:  items<10 ? pri= "0" + items.toString(): pri= items.toString();
        items>99 ? items=99: items<10 ? pri= "0" + items.toString(): pri= items.toString();
      });
    },
    child: Icon(Icons.add)

    )


    ),
        SizedBox(width: widget.sh*0.165,),
        Container(
          height: 30,
            width: 30,
          decoration: BoxDecoration(

            shape: BoxShape.circle,
            color: Colors.pink
          ),
          child:Icon(Icons.favorite, color: Colors.white,size: 20,)


        ),
    ]);
  }
}


class last extends StatefulWidget {
  final double sw;
  final Product p;

  const last(this.sw,this.p,{Key? key}) : super(key: key);

  @override
  State<last> createState() => _lastState();
}

class _lastState extends State<last> {
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        Container(
          child: OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              ),
              onPressed: () {
                setState(() {
                });
              },
              child: Icon(Icons.add_shopping_cart)

          ),
        ),
        SizedBox(width: widget.sw *0.02),
        Expanded(
          child: Container(

            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                primary: widget.p.color,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
              ),
              onPressed: () {  },
              child: Text(
                "BUY NOW",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ),
        )
      ],

    );
  }
}

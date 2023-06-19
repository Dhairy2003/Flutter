import "package:flutter/material.dart";
import "package:new_cart/Product.dart";
import "package:new_cart/constants.dart";
import "package:new_cart/screen.dart";
import "itemCard.dart";
import "category.dart";



class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
     double sh = MediaQuery.of(context).size.height;
     double sw = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed:(){}, icon : Icon(Icons.arrow_back, size: 32,color: dfColor,)),
        actions: [
          IconButton(onPressed:(){}, icon: Icon(Icons.search,size: 32,color: dfColor,)),
          SizedBox(
            width:sw*0.014 ,
          ),
          IconButton(onPressed:(){}, icon: Icon(Icons.shopping_cart_outlined,size: 32,color: dfColor,)),
          SizedBox(
            width:sw*0.020 ,
          ),
        ],
      ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height:sh*0.004 ,
          ),
          Align(
              alignment: Alignment.center,
              child: Text("Women", style: heading)),
         SizedBox(
           height:sh*0.022 ,
         ),
         category(sw:sw , sh: sh),
          SizedBox(
            height:sh*0.022 ,
          ),

      Expanded(child: 
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sw*0.02),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.75,)
              , itemBuilder: (context, index)=> itemCard(sh, sw, products[index],
                  press : ()=> Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> screen(sw, sh, products[index])
                  ))


              ),
              itemCount: products.length,
            ),
          )
      
      
      
      )




        ]
    )
    );
  }
}





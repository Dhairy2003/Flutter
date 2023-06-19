import "package:flutter/material.dart";
import "package:new_cart/Product.dart";
import "constants.dart";

class itemCard extends StatefulWidget {
  final Product products;
  final double sh;
  final double sw;
  final Function press;

  const itemCard(
      this.sh,
      this.sw,
      this.products,
      {required this.press, Key? key}
      ) : super(key: key);

  @override
  State<itemCard> createState() => _itemCardState();
}

class _itemCardState extends State<itemCard> {
  void handlePress() {
    widget.press(); // Call the press function passed from the parent widget
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handlePress, // Call the handlePress method
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: widget.products.color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(widget.products.image),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: widget.sh * 0.002),
            child: Text(widget.products.title, style: dfstyle2),
          ),
          Text("\$ ${widget.products.price}", style: dfstyle1),
        ],
      ),
    );
  }
}

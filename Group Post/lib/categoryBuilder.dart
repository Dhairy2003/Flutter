import "package:flutter/material.dart";
import 'categories.dart';




class CategoryBuilder extends StatefulWidget {
  final MediaQueryData qd;
  final Product p;

  const CategoryBuilder({required this.qd, required this.p, Key? key}) : super(key: key);

  @override
  State<CategoryBuilder> createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder> {


  void handlePress() {
    setState(() {
        widget.p.isSelected = !widget.p.isSelected;

      }
    );
  }

  @override
  Widget build(BuildContext context) {
    double sh = widget.qd.size.height;
    double sw = widget.qd.size.width;

    return GestureDetector(
      onTap: handlePress,

      child: Container(
        height: sh * 0.055,
        child: TextButton(
          onPressed: handlePress,
          style: TextButton.styleFrom(
            backgroundColor: widget.p.isSelected ? Colors.blue.shade700 : Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Icon(
                  widget.p.i,
                  color: widget.p.isSelected ? Colors.white : Colors.blueAccent,
                  size: sh * 0.045,
                ),
              ),
              SizedBox(
                height: widget.qd.size.height * 0.01,
              ),
              Flexible(
                child: Text(
                  widget.p.title,
                  style: TextStyle(
                    fontSize: sw * 0.03,
                    fontWeight: FontWeight.w500,
                    color: widget.p.isSelected ? Colors.white : Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.0,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


// Kam nhi krra ye , baki for loop chlaya to reset all selected bool to false vo rebuild nhi krra bas set krra
// void handlePress() {
//   setState(() {
//     lst.contains(widget.p.id) ? lst.remove(widget.p.id) : lst.add(widget.p.id);
//   });
// }

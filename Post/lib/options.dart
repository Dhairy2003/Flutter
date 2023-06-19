import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  final MediaQueryData qd;

  Options({required this.qd, Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  List<String> categories = ["Your Groups", "Discover Now"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.qd.size.height * 0.06,
      width: widget.qd.size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: widget.qd.size.width * 0.015),
          shrinkWrap: true,
          itemCount: categories.length,
          itemBuilder: (context, index) => _buildOptions(index, widget.qd),
          scrollDirection: Axis.horizontal,
        ),
      ]),
    );
  }

  Widget _buildOptions(int index, MediaQueryData qd) {
    double sw = qd.size.width;
    return Align(
      alignment: Alignment.center,
        child: Container(
          width:  widget.qd.size.shortestSide < 600 ? (widget.qd.size.width / categories.length) - sw * 0.06 : (widget.qd.size.width / categories.length) - sw * 0.1,
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: index == selectedIndex ? Colors.blueAccent : Color(0xFFF2F5FF),
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.symmetric(horizontal:sw * 0.03, vertical:sw * 0.01 ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: index == selectedIndex ? Colors.white : Colors.black,
                      fontSize: widget.qd.size.shortestSide < 600 ? sw * 0.04 : (widget.qd.size.width > 1000 ? sw * 0.015 : sw * 0.02)
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

    );
  }
}

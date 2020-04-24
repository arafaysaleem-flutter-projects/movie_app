import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> types = [
  "In Theater",
  "Box Office",
  "Common",
  "Brand New",
  "All Time"
];

class TypeSelector extends StatefulWidget {
  @override
  _TypeSelectorState createState() => _TypeSelectorState();
}

class _TypeSelectorState extends State<TypeSelector>{
  int selectedIndex = 0;
  double positionSlider=0;
  List<GlobalKey> _keys=List();


  _createKeys(){
    for(int i=0;i<types.length;i++){
      _keys.add(GlobalKey());
    }
  }

  _getPositions(int index) {
    final RenderBox renderBox = _keys[index].currentContext.findRenderObject();
    final position = renderBox.localToGlobal(Offset.zero);
    positionSlider=position.dx;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createKeys();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: types.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  key: _keys[index],
                  padding: EdgeInsets.only(left: 25),
                  width: 160,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _getPositions(index);
                        selectedIndex = index;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(types[index],
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 23,
                                  fontWeight: index == selectedIndex
                                      ? FontWeight.w500
                                      : FontWeight.w400,
                                  letterSpacing: 0.3,
                                  color: index == selectedIndex
                                      ? Theme.of(context).accentColor
                                      : Colors.grey[400]),
                            )),
//                    Container(
//                      width: 36,height: 4,
//                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.all(Radius.circular(300)),
//                        color: index == selectedIndex? Colors.pink : Colors.transparent,
//                      ),
//                      margin: EdgeInsets.only(top: 10),
//                      )
                      ],
                    ),
                  ),
                );
              }),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 110),
          top: 47,
          left: 25 + positionSlider,
          child: Container(
            width: 36,height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(300)),
              color: Colors.pink,
            ),
          ),
        ),
      ],
    );
  }
}

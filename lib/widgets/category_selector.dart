import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> categories=["Action","Horror","Comedy","Thriller","Drama","Sci-fi","Romance"];

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container( //Row of categories
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context,int index){
            return Container(
              padding: EdgeInsets.only(left: 25),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedIndex=index;
                  });
                },
                child: Container( //Round Shape
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: index == selectedIndex ? 1.5: 1,
                          color: index == selectedIndex ? Colors.grey[600]:Colors.grey[400]
                      ),
                      right: BorderSide(
                          width: index == selectedIndex ? 1.5: 1,
                          color: index == selectedIndex ? Colors.grey[600]:Colors.grey[400]
                      ),
                      bottom: BorderSide(
                          width: index == selectedIndex ? 1.5: 1,
                          color: index == selectedIndex ? Colors.grey[600]:Colors.grey[400]
                      ),
                      left: BorderSide(
                          width: index == selectedIndex ? 1.5: 1,
                          color: index == selectedIndex ? Colors.grey[600]:Colors.grey[400]
                      ),
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                  child: Text(categories[index],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 15,
                            letterSpacing: 0.3,
                            fontWeight: index == selectedIndex? FontWeight.w500:null,
                            color: index == selectedIndex? Theme.of(context).accentColor : Colors.grey[400]
                        ),
                      )
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}

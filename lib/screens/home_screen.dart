import 'package:flutter/material.dart';
import 'package:movieapp/widgets/category_selector.dart';
import 'package:movieapp/widgets/movie_selector.dart';
import 'package:movieapp/widgets/type_selector.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: IconButton(icon: Icon(Icons.menu,color: Theme.of(context).accentColor,size: 27,),onPressed: (){},)),
            Expanded(flex:10,child: SizedBox()),
            Expanded(child: IconButton(icon: Icon(Icons.search,color: Theme.of(context).accentColor,size: 27,),onPressed: (){},))
          ],
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[

          //Types
          Container(
              height: 80,
              child: TypeSelector()
          ),

          //Genres
          Container(
              height: 30,
              child: CategorySelector()
          ),

          SizedBox(height: 25,),

          //Movies
          MovieSelector()
        ],
      ),
    );
  }
}

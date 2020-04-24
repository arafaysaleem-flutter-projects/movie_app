import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/Objects/Movie.dart';

class MovieScreen extends StatefulWidget {
  Movie movie;

  MovieScreen({this.movie});

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //image
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(60)),
                          image: DecorationImage(
                            image: AssetImage(widget.movie.coverImageurl),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.4,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                      ),

                      SizedBox(
                        height: 60,
                      ),

                      //name, details, add to watchlist
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  widget.movie.name,
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Theme
                                          .of(context)
                                          .accentColor,
                                      fontSize: 26,
                                      letterSpacing: 0.3,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 7.0, left: 2),
                                  child: Row(
                                    children: <Widget>[
                                      //year
                                      Text(
                                        '${widget.movie.year}',
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 13.5,
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        width: 20,
                                      ),

                                      //pg
                                      Text(
                                        widget.movie.pg,
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 13.5,
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        width: 20,
                                      ),

                                      //duration
                                      Text(
                                        widget.movie.duration,
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 13.5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.pink[300]),
                                  padding: EdgeInsets.all(13),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      //categories
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        height: 31,
                        //Row of categories
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.movie.categories.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  //Round Shape
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.1, color: Colors.grey[400]),
                                      borderRadius: BorderRadius.circular(50)),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.5, horizontal: 15),
                                  child: Text(widget.movie.categories[index],
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: 13,
                                            color: Theme
                                                .of(context)
                                                .accentColor),
                                      )),
                                ),
                              );
                            }),
                      ),

                      SizedBox(
                        height: 35,
                      ),

                      //plot Summary
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text("Plot Summary",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 19,
                                  color: Theme
                                      .of(context)
                                      .accentColor),
                            )),
                      ),

                      SizedBox(
                        height: 12,
                      ),

                      //description
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25),
                        child: Text(widget.movie.description,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  height: 1.5,
                                  letterSpacing: 0.2,
                                  color: Colors.grey[600]),
                            )),
                      ),

                      SizedBox(
                        height: 35,
                      ),

                      //Cast & Crew
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text("Cast & Crew",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Theme
                                      .of(context)
                                      .accentColor),
                            )),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      //Row of Crew
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 130,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.movie.cast.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    //crew image
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          widget.movie.cast[index]["imageUrl"]),
                                      radius: 32,
                                    ),

                                    SizedBox(
                                      height: 12,
                                    ),

                                    //first name
                                    Text(widget.movie.cast[index]["FirstName"],
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              letterSpacing: 0.3,
                                              color: Theme
                                                  .of(context)
                                                  .accentColor),
                                        )),

                                    SizedBox(
                                      height: 2,
                                    ),

                                    //last name
                                    Text(widget.movie.cast[index]["LastName"],
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              letterSpacing: 0.3,
                                              color: Theme
                                                  .of(context)
                                                  .accentColor),
                                        )),

                                    SizedBox(
                                      height: 5,
                                    ),

                                    //role
                                    Text(widget.movie.cast[index]["Role"],
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              fontSize: 12.5,
                                              letterSpacing: 0.3,
                                              color: Colors.grey[600]),
                                        )),
                                  ],
                                ),
                              );
                            }),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),

                  Positioned(
                    width: 350,
                    top: MediaQuery
                        .of(context)
                        .size
                        .height * 0.33,
                    left: MediaQuery.of(context).size.width * 0.2,
                    child: Material(
                      color: Colors.white,
                      elevation: 17,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(14, 16, 8, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //Ratings
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                                //star
                                Icon(Icons.star, color: Colors.amber[600],
                                  size: 27,),

                                //out of
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      widget.movie.rating.toString(),
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Theme
                                                .of(context)
                                                .accentColor),
                                      ),
                                    ),
                                    Text("/10",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            color: Theme
                                                .of(context)
                                                .accentColor),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),

                            //Rate this
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                                //star outline
                                Icon(Icons.star_border, color: Theme
                                    .of(context)
                                    .accentColor,
                                  size: 27,
                                ),

                                //rate this
                                Text(
                                  "Rate This",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Theme
                                            .of(context)
                                            .accentColor
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //MetaScore
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                //Score
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 5),
                                  color: Colors.lightGreenAccent[700],
                                  child: Text("85",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 2.5,),

                                //Metascore
                                Text(
                                  "Metascore",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Theme
                                            .of(context)
                                            .accentColor),
                                  ),
                                ),

                                //number critic revs
                                Text("62 critic reviews",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 11,
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //back Icon
            Positioned(
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 19,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

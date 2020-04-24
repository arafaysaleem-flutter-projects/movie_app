import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/Objects/Movie.dart';
import 'package:movieapp/screens/movie_screen.dart';

var movies = [
  Movie(
    //1
    titleImageurl: "images/fordvferrari.jpg",
    coverImageurl: "images/fordvferraricover.jpg",
    name: "Ford v Ferrari",
    categories: ["Action", "Biography", "Drama"],
    pg: "PG-13",
    rating: 8.2,
    description:
        "American automotive designer Carroll Shelby and fearless British race car driver "
        "Ken Miles battle corporate interference, the laws of physics and their own personal demons "
        "to build a revolutionary vehicle for the Ford Motor Co",
    duration: "2hr 13min",
    year: 2019,
    cast: [
      {
        "FirstName": "James", //1
        "LastName": "Mangold",
        "Role": "Director",
        "imageUrl": "images/james.jpg"
      },
      {
        "FirstName": "Matt", //2
        "LastName": "Damon",
        "Role": "Carroll",
        "imageUrl": "images/matt.jpg"
      },
      {
        "FirstName": "Christian", //3
        "LastName": "Bale",
        "Role": "Ken Miles",
        "imageUrl": "images/christian.jpg"
      },
      {
        "FirstName": "Caitriona", //4
        "LastName": "Balfe",
        "Role": "Mollie",
        "imageUrl": "images/caitriona.jpg"
      }
    ],
  ), //1
  Movie(
    //1
    titleImageurl: "images/lego2.jpg",
    coverImageurl: "images/lego2cover.jpg",
    name: "Lego Movie 2",
    categories: ["Action", "Cartoon", "Kids"],
    pg: "PG",
    rating: 6.6,
    description:
        "It's been five years since everything was awesome and the citizens are "
            "facing a huge new threat: Lego Duplo invaders from outer space, wrecking everything"
            " faster than they can rebuild.",
    duration: "2hr 13min",
    year: 2019,
    cast: [
      {
        "FirstName": "James", //1
        "LastName": "Mangold",
        "Role": "Director",
        "imageUrl": "images/james.jpg"
      },
      {
        "FirstName": "Matt", //2
        "LastName": "Damon",
        "Role": "Carroll",
        "imageUrl": "images/matt.jpg"
      },
      {
        "FirstName": "Christian", //3
        "LastName": "Bale",
        "Role": "Ken Miles",
        "imageUrl": "images/christian.jpg"
      },
      {
        "FirstName": "Caitriona", //4
        "LastName": "Balfe",
        "Role": "Mollie",
        "imageUrl": "images/caitriona.jpg"
      }
    ],
  ), //2
  Movie(
    //1
    titleImageurl: "images/creed2.jpg",
    coverImageurl: "images/creed2cover.jpg",
    name: "Creed II",
    categories: ["Sport", "Drama"],
    pg: "PG-13",
    rating: 7.1,
    description:
        "Adonis Creed is on top of the world after winning the WBC World Heavyweight "
            "championship and successfully proposing to his girlfriend Bianca. But his world"
            " soon comes crashing down when Ivan Drago, the man who killed his father, Apollo Creed,"
            " comes to America with his son to challenge the new champion and avenge his lost to Rocky"
            " Balboa 30 years ago.",
    duration: "2hr 13min",
    year: 2018,
    cast: [
      {
        "FirstName": "James", //1
        "LastName": "Mangold",
        "Role": "Director",
        "imageUrl": "images/james.jpg"
      },
      {
        "FirstName": "Matt", //2
        "LastName": "Damon",
        "Role": "Carroll",
        "imageUrl": "images/matt.jpg"
      },
      {
        "FirstName": "Christian", //3
        "LastName": "Bale",
        "Role": "Ken Miles",
        "imageUrl": "images/christian.jpg"
      },
      {
        "FirstName": "Caitriona", //4
        "LastName": "Balfe",
        "Role": "Mollie",
        "imageUrl": "images/caitriona.jpg"
      }
    ],
  ), //3
  Movie(
    //1
    titleImageurl: "images/anabelle.jpg",
    coverImageurl: "images/anabellecover.jpg",
    name: "Anabelle Creation",
    categories: ["Horror", "Mystery", "Thriller"],
    pg: "PG-13",
    rating: 8.2,
    description:
    "Twelve years after the tragic death of their little girl, a doll-maker and "
        "his wife welcome a nun and several girls from a shuttered orphanage into their home, "
        "where they become the target of the doll-maker's possessed creation, Annabelle.",
    duration: "1h 49min",
    year: 2017,
    cast: [
      {
        "FirstName": "James", //1
        "LastName": "Mangold",
        "Role": "Director",
        "imageUrl": "images/james.jpg"
      },
      {
        "FirstName": "Matt", //2
        "LastName": "Damon",
        "Role": "Carroll",
        "imageUrl": "images/matt.jpg"
      },
      {
        "FirstName": "Christian", //3
        "LastName": "Bale",
        "Role": "Ken Miles",
        "imageUrl": "images/christian.jpg"
      },
      {
        "FirstName": "Caitriona", //4
        "LastName": "Balfe",
        "Role": "Mollie",
        "imageUrl": "images/caitriona.jpg"
      }
    ],
  ), //4
  Movie(
    //1
    titleImageurl: "images/escaperoom.jpg",
    coverImageurl: "images/escaperoomcover.jpeg",
    name: "Escape Room",
    categories: ["Action", "Adventure", "Horror"],
    pg: "PG-13",
    rating: 6.3,
    description:
    "Six strangers are given mysterious black boxes with tickets to an immersive escape room for a "
        "chance to win tons of money. Being locked in several rooms with extreme conditions, "
        "they discover the secrets behind the escape room and must fight to survive and to find a way"
        " out.",
    duration: "1h 39min",
    year: 2017,
    cast: [
      {
        "FirstName": "James", //1
        "LastName": "Mangold",
        "Role": "Director",
        "imageUrl": "images/james.jpg"
      },
      {
        "FirstName": "Matt", //2
        "LastName": "Damon",
        "Role": "Carroll",
        "imageUrl": "images/matt.jpg"
      },
      {
        "FirstName": "Christian", //3
        "LastName": "Bale",
        "Role": "Ken Miles",
        "imageUrl": "images/christian.jpg"
      },
      {
        "FirstName": "Caitriona", //4
        "LastName": "Balfe",
        "Role": "Mollie",
        "imageUrl": "images/caitriona.jpg"
      }
    ],
  )
];

class MovieSelector extends StatefulWidget {
  @override
  _MovieSelectorState createState() => _MovieSelectorState();
}

class _MovieSelectorState extends State<MovieSelector>
    with TickerProviderStateMixin {
  int selectedIndex = 1;
  PageController _pageController;
  AnimationController _rotationController;
  Animation _rotationAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.73);
    _rotationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _rotationAnimation =
        Tween(begin: 0, end: 0.175).animate(_rotationController);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _rotationController.dispose();
    super.dispose();
  }

  double getAngle(int index){
    if(index<selectedIndex) {
      _rotationController.forward();
      return 0.0 - _rotationAnimation.value;
    }
    else if(index> selectedIndex) {
      _rotationController.forward();
      return 0.0 + _rotationAnimation.value;
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.66,
      child: PageView.builder(
        onPageChanged: (index){
          setState(() {
            selectedIndex=index;
          });
        },
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => MovieScreen(
                          movie: movies[index],
                        )
                )
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 5.0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                transform: index==selectedIndex? new Matrix4.identity(): new Matrix4.identity().scaled(0.9,0.9),
                child: Transform.rotate(
                    angle: getAngle(index),
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 300),
                      opacity: index == selectedIndex ? 1.0: 0.4,
                      child: Column(
                        //Movie card
                        children: <Widget>[
                          //image Container
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                  image: AssetImage(movies[index].titleImageurl),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 18,
                                      spreadRadius: -25,
                                      color: Colors.grey[600],
                                      offset: Offset(0, 28))
                                ]),
                            height: 365,
                            width: 260,
                          ),

                          SizedBox(
                            height: 25,
                          ),

                          //name
                          Text(
                            "${movies[index].name}",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          //rating
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              //star
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              SizedBox(
                                width: 8,
                              ),

                              //ratings
                              Text(
                                movies[index].rating.toString(),
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Theme.of(context).accentColor),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
            ),
          );
        },
      ),
    );
  }
}

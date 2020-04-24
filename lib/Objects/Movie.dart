import 'package:flutter/material.dart';
import 'dart:core';

class Movie{
  String name,pg,description,duration,titleImageurl,coverImageurl;
  List<String> categories;
  int year;
  double rating;
  List<Map> cast;

  Movie({
    this.pg,
    this.name,this.categories,this.rating,this.description,
    this.duration,this.year,
    this.cast,
    @required this.coverImageurl,
    @required this.titleImageurl
  });
}
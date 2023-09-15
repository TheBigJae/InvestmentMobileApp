import 'package:flutter/material.dart';

class PopularModel{
  String name;

  PopularModel({
    required this.name
});
   static List<PopularModel>getPopular(){
    List<PopularModel> popular = [];
    
    popular.add(
      PopularModel(name: 'Popular')
    );
    popular.add(
        PopularModel(name: 'Cheapest')
    );
    popular.add(
        PopularModel(name: 'Recommended')
    );
    popular.add(
        PopularModel(name: 'Hot This')
    );
    popular.add(
        PopularModel(name: 'Hot That')
    );
    return popular;
  }
}


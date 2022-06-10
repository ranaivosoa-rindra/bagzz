// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WishesProvider extends ChangeNotifier {
  var initial_items;
  var new_items;

  // Future readJson() async {
  //   final String response =
  //       await rootBundle.loadString("assets/fake_data.json");
  //   final data = await json.decode(response);
  //   initial_items = data["product"];
  //   return initial_items;
  //   // print(data["product"][2]["title"]);
  // }

  void readJson() async {
    final String res = await rootBundle.loadString("assets/fake_data");
    final data = await jsonDecode(res);
    new_items = data;
    notifyListeners();
  }

  List getData() => new_items;
}

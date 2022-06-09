// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WishesProvider extends ChangeNotifier {
  List initial_items = [];

  Future readJson() async {
    final String response =
        await rootBundle.loadString("assets/fake_data.json");
    final data = await json.decode(response);
    initial_items = data["product"];
    return initial_items;
    // print(data["product"][2]["title"]);
  }
}

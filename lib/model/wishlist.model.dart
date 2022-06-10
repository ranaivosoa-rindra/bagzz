import 'dart:convert';

import 'package:flutter/services.dart';

class MyProduct {
  static final MyProduct _instance = MyProduct._internal();

  // initialisation
  MyProduct._internal() {
    _data = [];
  }

  List _data = [];

  // getter
  List get data => _data;

  // setter
  set data(List value) => {for (int i = 0; i < value.length; i++) data[i] = value[i]};

  void getData() async{
    final String res = await rootBundle.loadString("assets/fake_data");
    final data = await jsonDecode(res);
    
  }
}

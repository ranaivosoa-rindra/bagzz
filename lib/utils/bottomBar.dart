// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BottomAppBar(
      shape: AutomaticNotchedShape(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: Image.asset('lib/icons/heart-full.png', width: 20),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    )
                  ),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: Text("Hello"),
                    );
                  }
                );
            },
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Image.asset(
                "lib/icons/shopping-cart.png",
                height: 23,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

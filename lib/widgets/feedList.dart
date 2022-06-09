// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'dart:convert';

import 'package:bagzz/providers/wishlist.provider.dart';
import 'package:bagzz/screens/homePage.dart';
import 'package:bagzz/utils/boxItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Feedlist extends StatefulWidget {
  const Feedlist({Key? key}) : super(key: key);

  @override
  State<Feedlist> createState() => _FeedlistState();
}

class _FeedlistState extends State<Feedlist> {
  // List feeds = [];
  // Future readJson() async {
  //   final String response =
  //       await rootBundle.loadString("assets/fake_data.json");
  //   final data = await json.decode(response);
  //   setState(() {
  //     items = data["product"];
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // readJson();
  }

  @override
  Widget build(BuildContext context) {
    // final feeds = Provider.of<Wishes>(context).readJson() as List;
    final WishesProvider wishesProvider =
        Provider.of<WishesProvider>(context, listen: false);
    final myList = wishesProvider.readJson();
    print(myList.toString());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 13,
              mainAxisSpacing: 24,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (BuildContext context, int index) {
              // return BoxItem(
              //   itemImage: items[index]["img"],
              //   itemName: items[index]["title"]
              // );

              return Container(
                  // child: Text(feeds.length.toString()),
                  );
            },
          ),

          SizedBox(height: 15),

          /// show by categories
          // latest button
          OutlinedButton(
            onPressed: () {},
            child: Text(
              "check all latest".toUpperCase(),
              style: GoogleFonts.workSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

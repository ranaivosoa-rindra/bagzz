// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, dead_code, sort_child_properties_last

import 'dart:convert';

import 'package:bagzz/utils/bottomBar.dart';
import 'package:bagzz/utils/boxItem.dart';
import 'package:bagzz/utils/imageArrival.dart';
import 'package:bagzz/utils/topBar.dart';
import 'package:bagzz/widgets/allCategoriesItems.dart';
import 'package:bagzz/widgets/feedList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [];
  List itemsWish = [];
  Future readJson() async {
    final String response =
        await rootBundle.loadString("assets/fake_data.json");
    final data = await json.decode(response);
    setState(() {
      items = data["product"];
      itemsWish = data["wishes"];
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 17, left: 12, right: 12),
        child: BottomBar(
          wishFeeds: itemsWish,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                /// top bar
                TopBar(),

                /// cards scrollable horizontally : this season's latest
                Container(
                  height: 200,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // render new arrivals
                      ImageArrival(image: 'lib/icons/image-latest-1.png'),
                      ImageArrival(image: 'lib/icons/image-latest-2.png'),
                    ],
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                /// Feedlist
                Feedlist(
                  feeds: items,
                ),

                SizedBox(
                  height: 20,
                ),

                // all categories latest
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    children: [
                      // text title
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Shop to by categories",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      // all categories items
                      AllCategoriesItems(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

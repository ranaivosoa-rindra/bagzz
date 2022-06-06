// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:bagzz/utils/imageArrival.dart';
import 'package:bagzz/utils/topBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top bar
              TopBar(),

              // cards scrollable horizontally : this season's latest
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 195,
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

              // Feedlist
              Container(
                child: Text("Hello"),
              ),


              // show by categories


              // bottom bar
            ],
          ),
        ),
      ),
    );
  }
}

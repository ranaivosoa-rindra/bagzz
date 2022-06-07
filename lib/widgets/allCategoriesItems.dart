// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AllCategoriesItems extends StatefulWidget {
  const AllCategoriesItems({Key? key}) : super(key: key);

  @override
  State<AllCategoriesItems> createState() => _AllCategoriesItemsState();
}

class _AllCategoriesItemsState extends State<AllCategoriesItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // 1st two
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.cyan,
                width: MediaQuery.of(context).size.width / 2.5,
                height: 200,
                child: Image.asset(
                  "lib/icons/category-handle-bag.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width / 2.5,
                height: 200,
                child: Image.asset(
                  "lib/icons/category-crossbody-bags.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),

          SizedBox(height: 24),

          // 2nd two
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width / 2.5,
                height: 200,
                child: Image.asset(
                  "lib/icons/category-shoulder-bag.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width / 2.5,
                height: 200,
                child: Image.asset(
                  "lib/icons/category-tote-bag.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),

          SizedBox(
            height: 15,
          ),

          // button
          OutlinedButton(
            onPressed: () {},
            child: Text(
              "browse all categories".toUpperCase(),
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

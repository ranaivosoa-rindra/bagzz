// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class WishList extends StatefulWidget {
  final String itemImage;
  final String itemName;
  final String itemSub;
  final String itemStyle;
  
  const WishList({
    Key? key,
    required this.itemImage, 
    required this.itemName, 
    required this.itemSub, 
    required this.itemStyle,
  }) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Column(
      children: [
        Row(
          children: [
            // item image
            Container(
              child: Image.asset(
                widget.itemImage,
                width: 85,
                fit: BoxFit.fitWidth,
              ),
            ),

            SizedBox(
              width: 12,
            ),

            // item caracterisation
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.itemName,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 7
                ),
                Text(
                  widget.itemSub,
                  style: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  widget.itemStyle,
                  style: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.5)
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 10
        ),
        Column(
          children: [
            Text(
              "remove".toUpperCase(),
              style: GoogleFonts.workSans(
                  fontSize: 14, 
                  fontWeight: FontWeight.w600
                ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.black, 
              height: 2,
              width: 59
            ),
          ],
        ),
      ]
    ),
    );
  }
}

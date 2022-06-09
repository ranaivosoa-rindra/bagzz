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
    required this.itemImage, required this.itemName, required this.itemSub, required this.itemStyle,
  }) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          children: [
            // item image
            Container(
              child: Image.asset(
                widget.itemImage,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
            ),

            // item caracterisation
            Column(
              children: [
                Text(
                  widget.itemName,
                ),
                Text(
                  widget.itemSub
                ),
                Text(
                  widget.itemStyle
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Text(
              "remove".toUpperCase(),
              style: GoogleFonts.workSans(
                  fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Container(color: Colors.black, height: 2, width: 86),
          ],
        ),
      ]),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxItem extends StatefulWidget {
  final String itemImage;
  final String itemName;
  const BoxItem({Key? key, required this.itemImage, required this.itemName})
      : super(key: key);

  @override
  State<BoxItem> createState() => _BoxItemState();
}

class _BoxItemState extends State<BoxItem> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF1F1F1),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // outline heart Icons
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 25,
                margin: EdgeInsets.only(right: 10, top: 5),
                child: InkWell(
                  child: (isLiked)
                      ? Image.asset(
                        'lib/icons/heart-full.png',
                        fit: BoxFit.fitWidth
                      )
                      : Image.asset(
                        'lib/icons/heart-outline.png',
                          fit: BoxFit.fitWidth,
                      ),
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              margin: EdgeInsets.only(bottom: 8),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // item image
                  Container(
                    child: Image.asset(
                      widget.itemImage,
                      width: 120,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                      widget.itemName,
                      style: GoogleFonts.playfairDisplay(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  "shop now".toUpperCase(),
                  style: GoogleFonts.workSans(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.black,
                  height: 2,
                  width: 86
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxItem extends StatefulWidget {
  final String itemImage;
  final String itemName;
  const BoxItem({Key? key, required this.itemImage, required this.itemName}) : super(key: key);

  @override
  State<BoxItem> createState() => _BoxItemState();
}

class _BoxItemState extends State<BoxItem> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: MediaQuery.of(context).size.width / 2.5,
      color: Color(0xffF1F1F1),
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // item image
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset(
                      widget.itemImage,
                      height: 80,
                    ),
                  ),

                  // outline heart Icons
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: (isLiked)
                          ? Image.asset('lib/icons/heart-full.png', width: 15)
                          : Image.asset('lib/icons/heart-outline.png',
                              width: 15),
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.itemName,
              style: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "shop now".toUpperCase(),
              style: GoogleFonts.workSans(
                  fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(color: Colors.black, height: 2, width: 86),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CartList extends StatefulWidget {
  final String itemImage;
  final String itemName;
  final String itemSub;
  final String itemStyle;
  final String itemPrice;
  final String itemNumbers;
  const CartList({
    Key? key, 
    required this.itemImage, 
    required this.itemName, 
    required this.itemSub, 
    required this.itemStyle, 
    required this.itemPrice, 
    required this.itemNumbers
  }) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              // image
              Container(
                child: Image.asset(
                  widget.itemImage,
                  width: 85,
                  fit: BoxFit.fitWidth,
                ),
              ),

              SizedBox(
                height: 18,
              ),

              // buttons
              SizedBox(
                width: 80,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Icon(Icons.remove, color: Colors.white,),
                    ),
                    Flexible(
                      child: Container(
                        height: 25,
                        width: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            widget.itemNumbers
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Icon(Icons.add, color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 29,
          ),
          Container(
            // color: Colors.amber,
            height: 120,
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.itemName,
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.itemSub,
                      style: GoogleFonts.workSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                ),
                Text(
                  "\$${widget.itemPrice}",
                  style: GoogleFonts.workSans(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

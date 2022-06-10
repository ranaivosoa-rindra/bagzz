// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:ui';

import 'package:bagzz/widgets/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomBar extends StatefulWidget {
  final List wishFeeds;
  const BottomBar({Key? key, required this.wishFeeds}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

_wishlistBottomSheet(){
  showModalBottomSheet(
      barrierColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      // clipBehavior -> background container non blury
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(50),
      )),
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.75),
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
          child: Container(
            padding: EdgeInsets.only(left: 27, top: 17),
            height: MediaQuery.of(context).size.height * 0.67,
            child: ListView.builder(
                itemCount: widget.wishFeeds.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      if(index == 0)...[
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 100),
                          color: Colors.black,
                          height: 2
                        ),
                        SizedBox(
                          height: 55,
                        ),
                      ],
                      WishList(
                        itemImage: widget.wishFeeds[index]["img"],
                        itemName: widget.wishFeeds[index]["title"],
                        itemSub: widget.wishFeeds[index]["itemSub"],
                        itemStyle: widget.wishFeeds[index]
                            ["itemStyle"],
                      ),
                      if (index < widget.wishFeeds.length - 1) ...[
                        SizedBox(
                          height: 19,
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 15),
                          color: Colors.black,
                          height: 1.5
                        ),
                      ],
                      if(index == widget.wishFeeds.length - 1)...[
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 22, 
                                vertical: 12
                              ),
                              child: Text(
                                "add all to cart".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                    ],
                  );
                }
              ),
          ),
        );
      }
    );
  }

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
            onPressed: _wishlistBottomSheet,
            icon: Image.asset('lib/icons/heart-full.png', width: 20),
          ),
          IconButton(
            onPressed: () {},
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

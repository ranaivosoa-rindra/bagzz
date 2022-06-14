// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:ui';

import 'package:bagzz/widgets/cartList.dart';
import 'package:bagzz/widgets/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomBar extends StatefulWidget {
  final List wishFeeds;
  final List cartFeeds;
  const BottomBar({Key? key, required this.wishFeeds, required this.cartFeeds})
      : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  _itemslistBottomSheet(List itemsList, String title) {
    showModalBottomSheet(
        barrierColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        // clipBehavior -> background container non blury
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(50),
          ),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.75),
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
            child: Container(
              padding: EdgeInsets.only(left: 27, top: 17),
              height: MediaQuery.of(context).size.height * 0.67,
              child: ListView.builder(
                  itemCount: itemsList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        if (index == 0) ...[
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 100),
                              color: Colors.black,
                              height: 2),
                          SizedBox(
                            height: 55,
                          ),
                        ],

                        // render wishlist
                        if (title == "wishlist") ...[
                          WishList(
                            itemImage: itemsList[index]["img"],
                            itemName: itemsList[index]["title"],
                            itemSub: itemsList[index]["itemSub"],
                            itemStyle: itemsList[index]["itemStyle"],
                          ),
                        ],

                        // render cartList
                        if (title == "cartList") ...[
                          CartList(
                            itemImage: itemsList[index]["img"], 
                            itemName: itemsList[index]["title"], 
                            itemSub: itemsList[index]["itemSub"], 
                            itemStyle: itemsList[index]["itemStyle"], 
                            itemPrice: itemsList[index]["price"], 
                            itemNumbers: itemsList[index]["numbers"],
                          ),
                        ],

                        if (index < itemsList.length - 1) ...[
                          SizedBox(
                            height: 19,
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              color: Colors.black,
                              height: 1.5),
                        ],
                        if (index == itemsList.length - 1) ...[
                          if(title == "wishlist")...[
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 12),
                                  child: Text(
                                    "add all to cart".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          if(title == "cartList")...[
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 12),
                                  child: Text(
                                    "proceed to buy".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ],
                    );
                  }),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.wishFeeds.length.toString());
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
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {
              _itemslistBottomSheet(widget.wishFeeds, "wishlist");
            },
            icon: Image.asset('lib/icons/heart-full.png', width: 20),
          ),
          IconButton(
            onPressed: () {
              _itemslistBottomSheet(widget.cartFeeds, "cartList");
            },
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

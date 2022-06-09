// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:bagzz/utils/boxItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Feedlist extends StatefulWidget {
  const Feedlist({Key? key}) : super(key: key);

  @override
  State<Feedlist> createState() => _FeedlistState();
}

class _FeedlistState extends State<Feedlist> {
  List<Widget> _cardList = [];

  void addCard() {
    setState(() {
      _cardList.add(
        BoxItem(
          itemImage: 'lib/icons/monogram.png',
          itemName: 'Monogram',
        ),
      );
    });
    setState(() {
      _cardList.add(
        BoxItem(
          itemImage: 'lib/icons/capucinus.png',
          itemName: 'Capucinus',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 13,
            mainAxisSpacing: 24,
            children: [
              BoxItem(
                itemImage: 'lib/icons/artsy.png',
                itemName: 'Artsy',
              ),
              BoxItem(
                itemImage: 'lib/icons/berkely.png',
                itemName: 'Berkely',
              ),
              BoxItem(
                itemImage: 'lib/icons/monogram.png',
                itemName: 'Monogram',
              ),
              BoxItem(
                itemImage: 'lib/icons/capucinus.png',
                itemName: 'Capucinus',
              ),
              // ListView.builder(
              //     itemCount: _cardList.length,
              //     itemBuilder: (context, index) {
              //       return _cardList[index];
              //   }
              // ),
            ],
          ),

          SizedBox(height: 15),

          /// show by categories
          // latest button
          OutlinedButton(
            onPressed: () {
              addCard();
            },
            child: Text(
              "check all latest".toUpperCase(),
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

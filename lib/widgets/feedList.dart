// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:bagzz/utils/boxItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Feedlist extends StatelessWidget {
  const Feedlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      // container of all items
      child: Container(
        width: MediaQuery.of(context).size.width,
        // color: Colors.amber,
        child: Column(
          children: [
            // 1st two items
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxItem(itemImage: 'lib/icons/artsy.png', itemName: 'Artsy',),
                BoxItem(itemImage: 'lib/icons/berkely.png', itemName: 'berkely',)
              ],
            ),
            SizedBox(height: 24),
            // 2nd two items
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxItem(itemImage: 'lib/icons/capucinus.png', itemName: 'Capucinus',),
                BoxItem(itemImage: 'lib/icons/monogram.png', itemName: 'Monogram',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

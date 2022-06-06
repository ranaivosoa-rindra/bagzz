import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Icon
              Image.asset('lib/icons/menu-icon.png'),

              // title
              Container(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  "bagzz",
                  style: GoogleFonts.playfairDisplay(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ],
          ),

          // circled photo
          const CircleAvatar(
            backgroundImage: AssetImage('lib/icons/rindra-photo.png'),
          )
        ],
      ),
    );
  }
}

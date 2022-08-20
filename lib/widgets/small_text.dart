// ignore_for_file: must_be_immutable

import 'package:ecommerce/constants/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  final String smalltext;
  final Color color;
  double? size;
  SmallText(
      {Key? key,
      required this.smalltext,
      this.size = 12,
      this.color = GlobalVariable.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      smalltext,
      style: GoogleFonts.roboto(
        fontSize: size,
        color: color,
      ),
    );
  }
}

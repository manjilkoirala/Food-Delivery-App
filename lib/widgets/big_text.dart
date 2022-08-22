// ignore_for_file: must_be_immutable

import 'package:ecommerce/constants/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  final String bigtext;
  final Color? color;
  double size;
  TextOverflow overflow;
  BigText(
      {Key? key,
      required this.bigtext,
      this.size = 20.0,
      this.color = Mycolor.mainBlackColor,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      bigtext,
      maxLines: 1,
      style: GoogleFonts.roboto(
          fontSize: size, color: color, fontWeight: FontWeight.w400),
      overflow: overflow,
    );
  }
}

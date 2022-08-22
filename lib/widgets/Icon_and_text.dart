// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/constants/global_variables.dart';
import 'package:ecommerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconcolor;
  const IconText({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconcolor,
        ),
        const SizedBox(
          width: 5,
        ),
        SmallText(
          smalltext: text,
          size: Dimensions.screenHeight / 70.33,
        ),
      ],
    );
  }
}

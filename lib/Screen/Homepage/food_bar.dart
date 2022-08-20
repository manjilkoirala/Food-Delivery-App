import 'package:ecommerce/Screen/Homepage/food_body.dart';
import 'package:ecommerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';
import '../../widgets/big_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      BigText(
                        bigtext: "Nepal",
                        color: GlobalVariable.mainColor,
                        size: 30,
                      ),
                      Row(
                        children: [
                          SmallText(
                            smalltext: "Itahari",
                            color: Colors.black45,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: GlobalVariable.mainColor,
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          const FoodPageBody()
        ],
      ),
    );
  }
}

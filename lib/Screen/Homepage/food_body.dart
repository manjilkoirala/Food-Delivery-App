import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/constants/global_variables.dart';
import 'package:ecommerce/model/foodmodel.dart';
import 'package:ecommerce/widgets/Icon_and_text.dart';
import 'package:ecommerce/widgets/big_text.dart';
import 'package:ecommerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentpage = 0.0;
  double _scalefactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentpage = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.mainContainer,
          // color: Colors.yellow,
          child: PageView.builder(
              controller: pageController,
              itemCount: Fooddata.foodimg.length,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currentpage,
          decorator: DotsDecorator(
            activeColor: Mycolor.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentpage.floor()) {
      var curScale = 1 - (_currentpage - index) * (1 - _scalefactor);
      var currTrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentpage.floor() + 1) {
      var curScale =
          _scalefactor + (_currentpage - index + 1) * (1 - _scalefactor);

      var currTrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentpage.floor() - 1) {
      var curScale = 1 - (_currentpage - index) * (1 - _scalefactor);

      var currTrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var curScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scalefactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img/pizza.jpg"),
                ),
                color: index.isEven
                    ? const Color(0xff69c5df)
                    : const Color(0xff9294cc)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: 30, right: 30, bottom: Dimensions.screenHeight / 28.13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xffe8e8e8),
                      offset: Offset(0, 5),
                      blurRadius: 5.0),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  )
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.screenHeight / 56.27, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BigText(
                      bigtext: "Laziz Pizza",
                      size: Dimensions.screenHeight / 42.2,
                    ),
                    SizedBox(height: Dimensions.screenHeight / 84.4),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: Mycolor.mainColor,
                                    size: Dimensions.screenHeight / 56.27,
                                  )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SmallText(
                            smalltext: "4.5",
                            size: Dimensions.screenHeight / 70.33),
                        const SizedBox(
                          width: 10,
                        ),
                        SmallText(
                          smalltext: "1282 comments",
                          size: Dimensions.screenHeight / 70.33,
                        )
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.screenHeight / 42.2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        IconText(
                            icon: Icons.circle_sharp,
                            text: "Normal",
                            iconcolor: Mycolor.iconColor1),
                        IconText(
                            icon: Icons.location_on_sharp,
                            text: "32min",
                            iconcolor: Mycolor.mainColor),
                        IconText(
                            icon: Icons.access_time_rounded,
                            text: "1.7km",
                            iconcolor: Mycolor.iconColor2)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

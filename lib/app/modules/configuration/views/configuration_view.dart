import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:outfitr/app/routes/app_pages.dart';
import 'package:outfitr/constant.dart';

import '../controllers/configuration_controller.dart';
import 'components/components.dart';
import 'components/swipe_button.dart';

// import 'package:swipebuttonflutter/swipebuttonflutter.dart';
// import 'package:swipe_button/swipe_button.dart';

class ConfigurationView extends GetView<ConfigurationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xff0C0D34),
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 707,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 189,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.white),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(Get.width / 4)),
                            child: SvgPicture.asset(
                              'assets/images/bg-pattern.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: Transform.rotate(
                            angle: 180 * math.pi / 180,
                            child: SvgPicture.asset(
                              'assets/images/bg-pattern.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 189,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 518,
                        padding: EdgeInsets.only(
                            top: kDefaultPadding, bottom: kDefaultPadding),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Get.width / 4),
                            bottomLeft: Radius.circular(Get.width / 4),
                            bottomRight: Radius.circular(Get.width / 4),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Header(),
                              ChoiceSection(
                                question: 'What outfits do you want to see?',
                                choices: ['For man', 'For Women', 'Both'],
                              ),
                              ChoiceSection(
                                question:
                                    'What type of outfit you usually wear?',
                                choices: ['Sport', 'Smart Casual', 'Casual'],
                              ),
                              ChoiceSizeSection(
                                choices: ['S', 'M', 'L', 'XL', 'XXL'],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2,
                      vertical: kDefaultPadding),
                  child: Center(
                    child: SwipeButton(
                      thumb: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                  widthFactor: 0.90,
                                  child: Transform.rotate(
                                    angle: 90 * math.pi / 180,
                                    child: Icon(
                                      Icons.dehaze,
                                      size: 30.0,
                                      color: Color(0xff2CB9B0),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      content: Center(
                        child: Text(
                          'Swipe to containue',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onChanged: (result) {
                        if (result == SwipePosition.SwipeRight) {
                          Get.toNamed(Routes.SHOPPING_CART);
                          //  Navigator.pushNamed(context, pageRoute);
                        } else {}
                      },
                    ),
                    // child: Container(
                    //   height: 50,
                    //   child: SwipingButton(
                    //     swipeButtonColor: Colors.white,
                    //     backgroundColor: kPrimaryColor,
                    //     iconColor: kPrimaryColor,
                    //     text: 'Swipe to containue',
                    //     buttonTextStyle: TextStyle(
                    //         fontSize: 11.0,
                    //         fontWeight: FontWeight.w800,
                    //         color: Colors.white),
                    //     onSwipeCallback: () {},
                    //   ),
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

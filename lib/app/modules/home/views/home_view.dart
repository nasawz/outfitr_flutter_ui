import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:outfitr/app/routes/app_pages.dart';

import 'package:outfitr/constant.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Color(0xffFFE4D9),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Hero(),
            Positioned(
              top: 400.0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      Container(
                        width: Get.width / 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Dot(
                              big: false,
                            ),
                            Dot(
                              big: false,
                            ),
                            Dot(
                              big: true,
                            ),
                            Dot(
                              big: false,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Text(
                        'Your Style, Your Way',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 24.0,
                          color: const Color(0xFF0C0D34),
                          height: 1.25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      SizedBox(
                        width: 265.0,
                        height: 48.0,
                        child: Text(
                          ' Create your individual & unique style and look amazing everyday',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Regular',
                            fontSize: 16.0,
                            color: const Color(0xFF0C0D34).withOpacity(0.7),
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      SizedBox(
                        width: 245,
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.CONFIGURATION);
                          },
                          elevation: 0,
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontFamily: 'SFProDisplay-Medium',
                              fontSize: 15,
                              color: const Color(0xff0c0d34),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final bool big;
  const Dot({
    Key key,
    this.big,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: big ? Color(0xff2CB9B0) : Color(0xff2CB9B0),
        borderRadius: BorderRadius.circular(big ? 3 : 2),
      ),
      child: SizedBox(
        width: big ? 6 : 4,
        height: big ? 6 : 4,
      ),
    );
  }
}

class Hero extends StatelessWidget {
  const Hero({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              color: Color(0xffFFE4D9),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(Get.width / 4),
              ),
            ),
            // padding: EdgeInsets.all(kDefaultPadding),
            alignment: Alignment.center,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.transparent),
              child: Transform.translate(
                offset: Offset(-Get.width / 2.8, 0),
                child: Transform.rotate(
                  //旋转90度
                  angle: -90.0 * math.pi / 180,
                  child: Text(
                    'Excentric',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay-Bold',
                      fontSize: 80.0,
                      color: Colors.white,
                      letterSpacing: -1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 140,
          decoration: BoxDecoration(color: Color(0xffFFE4D9)),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Get.width / 4),
              ),
            ),
          ),
        )
      ],
    );
  }
}

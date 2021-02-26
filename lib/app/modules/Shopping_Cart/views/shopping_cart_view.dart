import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:get/get.dart';
import 'package:outfitr/constant.dart';

import '../controllers/shopping_cart_controller.dart';

class ShoppingCartView extends GetView<ShoppingCartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        backgroundColor: Color(0xff0C0D34),
        // appBar: AppBar(
        //   brightness: Brightness.dark,
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 707,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.white),
                          child: Container(
                            height: 189,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(Get.width / 4),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Get.context.mediaQueryPadding.top,
                                ),
                                CartNav(),
                                Expanded(
                                  child: Center(
                                    child: // Adobe XD layer: '3 Items added' (text)
                                        SizedBox(
                                      width: 165.0,
                                      child: Text(
                                        '3 Items added',
                                        style: TextStyle(
                                          fontFamily: 'SFProDisplay-Semibold',
                                          fontSize: 24,
                                          color: const Color(0xffffffff),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(color: kPrimaryColor),
                        )
                      ],
                    ),
                    Positioned(
                      top: 189,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 518,
                        padding: EdgeInsets.all(kDefaultPadding),
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
                              CartItem(
                                color: Color(0x80fff7c0),
                                count: 2,
                              ),
                              CartItem(
                                color: Color(0xffBFEAF5),
                                count: 3,
                              ),
                              CartItem(
                                color: Color(0xffFFD7D8),
                                count: 1,
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
                    width: double.infinity,
                    padding: EdgeInsets.all(kDefaultPadding),
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        // decoration: BoxDecoration(color: Colors.red),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Payment:',
                                    style: TextStyle(
                                      fontFamily: 'SFProDisplay-Regular',
                                      fontSize: 14,
                                      color: const Color(0x80ffffff),
                                      height: 1.7142857142857142,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                  // Adobe XD layer: '$189,94' (text)
                                  Text(
                                    '\$189,94',
                                    style: TextStyle(
                                      fontFamily: 'SFProDisplay-Semibold',
                                      fontSize: 20,
                                      color: const Color(0xffffffff),
                                      letterSpacing: -0.1666666603088379,
                                      height: 1.1,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 180,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      color: kPrimaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Text(
                                        'Go to checkout',
                                        style: TextStyle(
                                          fontFamily: 'SFProDisplay-Medium',
                                          fontSize: 15,
                                          color: const Color(0xffffffff),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}

class CartItem extends StatelessWidget {
  final Color color;
  final int count;
  const CartItem({
    Key key,
    this.color,
    this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding / 2),
      // decoration: BoxDecoration(color: Colors.red),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: color,
            ),
          ),
          Container(
            // decoration: BoxDecoration(color: Colors.yellow),
            width: 120,
            height: 120,
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Size:',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay-Regular',
                      fontSize: 12,
                      color: const Color(0xff0c0d34),
                      height: 2,
                    ),
                    children: [
                      TextSpan(
                        text: 'M,L',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 12,
                          color: const Color(0xff2cb9b0),
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                // Adobe XD layer: 'Short Sleeve Organic' (text)
                Text(
                  'Short Sleeve\nOrganic Top',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Semibold',
                    fontSize: 16,
                    color: const Color(0xff0c0d34),
                  ),
                  textAlign: TextAlign.left,
                ),
                // Adobe XD layer: '$29.99' (text)
                Text(
                  '\$29.99',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Semibold',
                    fontSize: 18,
                    color: const Color(0xff2cb9b0),
                  ),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: const ShapeDecoration(
              color: Color(0xff0c0d34),
              shape: CircleBorder(),
            ),
            child: Center(
              child: Text(
                'x${count.toString()}',
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Semibold',
                  fontSize: 12,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartNav extends StatelessWidget {
  const CartNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: const ShapeDecoration(
                color: Colors.white24,
                shape: CircleBorder(),
              ),
              child: Center(
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ),
            // Adobe XD layer: 'Shopping Cart' (text)
            Text(
              'Shopping Cart',
              style: TextStyle(
                fontFamily: 'SFProDisplay-Semibold',
                fontSize: 12,
                color: const Color(0xffffffff),
                letterSpacing: 1.5,
                height: 2,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
            Container(
              decoration: const ShapeDecoration(
                color: Colors.white24,
                shape: CircleBorder(),
              ),
              child: Center(
                child: IconButton(
                  color: Colors.white,
                  icon: Badge(
                    badgeColor: Colors.white,
                    badgeContent: Text(
                      '3',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    child: Icon(Icons.shopping_bag_outlined),
                  ),
                  onPressed: () {
                    print('pass');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

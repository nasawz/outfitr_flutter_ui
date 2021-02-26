import 'package:flutter/material.dart';

import 'package:outfitr/constant.dart';

class ChoiceSizeSection extends StatelessWidget {
  final List<String> choices;
  const ChoiceSizeSection({
    Key key,
    this.choices,
  }) : super(key: key);

  Widget getChoiceWidgets(List<String> choices) {
    List<Widget> list = new List<Widget>();
    var index = 0;
    for (var choice in choices) {
      list.add(CheckSizeItem(
        text: choice,
        isChecked: index == 1 || index == 2,
      ));
      index++;
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: BoxDecoration(color: Colors.red),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        child: Column(
          children: [
            // Adobe XD layer: 'What is your size?' (text)
            Text(
              'What is your size?',
              style: TextStyle(
                fontFamily: 'SFProDisplay-Regular',
                fontSize: 14,
                color: const Color(0x800c0d34),
                letterSpacing: 0.30000000381469727,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            getChoiceWidgets(choices)
          ],
        ));
  }
}

class CheckSizeItem extends StatelessWidget {
  final bool isChecked;
  final String text;
  const CheckSizeItem({
    Key key,
    this.isChecked,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
        border: isChecked
            ? Border.all(width: 1.0, color: const Color(0x1a0c0d34))
            : null,
      ),
      child: Center(
        child: SizedBox(
          width: 40,
          height: 40,
          child: RaisedButton(
            onPressed: () {},
            elevation: 0,
            color: isChecked ? kPrimaryColor : Color(0xffF6F6F6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            padding: EdgeInsets.zero,
            child: // Adobe XD layer: 'XXL' (text)
                Text(
              text,
              style: TextStyle(
                fontFamily: 'SFProDisplay-Semibold',
                fontSize: 12,
                color: isChecked ? Colors.white : Color(0xff0c0d34),
                letterSpacing: -0.09999999618530273,
                height: 1.8333333333333333,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}

class ChoiceSection extends StatelessWidget {
  final String question;
  final List<String> choices;
  const ChoiceSection({
    Key key,
    this.question,
    this.choices,
  }) : super(key: key);

  Widget getChoiceWidgets(List<String> choices) {
    List<Widget> list = new List<Widget>();
    var index = 0;
    for (var choice in choices) {
      list.add(CheckItem(
        text: choice,
        isChecked: index == 1,
      ));
      index++;
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      // decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: [
          // Adobe XD layer: 'What outfits do you' (text)
          Text(
            question,
            style: TextStyle(
              fontFamily: 'SFProDisplay-Regular',
              fontSize: 14,
              color: const Color(0x800c0d34),
              height: 1.4285714285714286,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          getChoiceWidgets(choices)
        ],
      ),
    );
  }
}

class CheckItem extends StatelessWidget {
  final bool isChecked;
  final String text;
  const CheckItem({
    Key key,
    this.isChecked,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      elevation: 0,
      color: isChecked ? kPrimaryColor : Color(0xffF6F6F6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'SFProDisplay-Medium',
          fontSize: 14,
          color: isChecked ? Colors.white : Color(0xff0c0d34),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 285.0,
          height: 24.0,
          child: Text(
            'Outfit generator',
            style: TextStyle(
              fontFamily: 'SFProDisplay-Semibold',
              fontSize: 12,
              color: const Color(0x800c0d34),
              letterSpacing: 1.5,
              height: 2,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        SizedBox(
          width: 305.0,
          height: 34.0,
          child: Text(
            'Configure account',
            style: TextStyle(
              fontFamily: 'SFProDisplay-Semibold',
              fontSize: 28,
              color: const Color(0xff0c0d34),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        )
      ],
    );
  }
}

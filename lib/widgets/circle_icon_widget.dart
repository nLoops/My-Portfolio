import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/res/dimens.dart';
import 'dart:html' as html;

class CircleIconWidget extends StatelessWidget {
  final Map data;

  const CircleIconWidget({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.0,
      height: 48.0,
      margin: EdgeInsets.only(
          left: data["url"] == Constants.githubUrl ? 0 : Dimens.dimenNormal),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.transparent),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(data["icon"]),
          Material(
            color: Colors.transparent,
            type: MaterialType.button,
            borderRadius: BorderRadius.circular(100.0),
            child: InkWell(
              hoverColor: Colors.black45,
              borderRadius: BorderRadius.circular(100.0),
              onTap: () => html.window.open(data["url"], Constants.name),
            ),
          )
        ],
      ),
    );
  }
}

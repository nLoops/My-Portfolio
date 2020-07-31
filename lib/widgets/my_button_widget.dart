import 'package:flutter/material.dart';
import 'dart:html' as html;

class MyButtonWidget extends StatelessWidget {
  final String title;
  final String url;

  const MyButtonWidget({Key key, this.title, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0,
      width: 88.0,
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            type: MaterialType.button,
            child: InkWell(
              onTap: () => html.window.open(url, title),
              hoverColor: Colors.white54,
            ),
          ))
        ],
      ),
    );
  }
}

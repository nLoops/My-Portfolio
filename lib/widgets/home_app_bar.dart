import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/dimens.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar() : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    double _margin = MediaQuery.of(context).size.width * 0.10;

    return Container(
      height: kToolbarHeight,
      margin: EdgeInsets.symmetric(horizontal: _margin),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Ahmed Ibrahim',
            style: Theme.of(context).textTheme.headline4,
          ),
//          Spacer(),
//          Text(
//            'HOME',
//            style: Theme.of(context).textTheme.subtitle1,
//          ),
//          SizedBox(
//            width: Dimens.webHomeAppBarSmallMargin,
//          ),
//          Text(
//            'ABOUT',
//            style: Theme.of(context).textTheme.subtitle1,
//          ),
//          SizedBox(
//            width: Dimens.webHomeAppBarSmallMargin,
//          ),
//          Text(
//            'PROJECTS',
//            style: Theme.of(context).textTheme.subtitle1,
//          ),
//          SizedBox(
//            width: Dimens.webHomeAppBarSmallMargin,
//          )
        ],
      ),
    );
  }
}

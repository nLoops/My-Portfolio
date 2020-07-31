import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/dimens.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar() : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      margin: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ahmed Ibrahim',
            style: Theme.of(context).textTheme.headline4,
          ),
          Spacer(),
          Text(
            'HOME',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(width: Dimens.webHomeAppBarSmallMargin,),
          Text(
            'ABOUT',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(width: Dimens.webHomeAppBarSmallMargin,),
          Text(
            'PROJECTS',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(width: Dimens.webHomeAppBarSmallMargin,)
        ],
      ),
    );
  }
}

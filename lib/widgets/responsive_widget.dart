import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/app_themes.dart';
import 'package:flutter_portfolio/res/dimens.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget web;
  final Widget mobile;

  const ResponsiveWidget(
      {Key key, @required this.web, @required this.mobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return isMobile ? _mobileWidget(context) : _webWidget(context);
  }

  Widget _webWidget(BuildContext context) {
    double _horizontalPadding = MediaQuery.of(context).size.width * 0.10;

    return Container(
      color: AppTheme.primaryColor,
      constraints: BoxConstraints(maxWidth: Dimens.responsiveWebWidth),
      padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: web,
    );
  }

  Widget _mobileWidget(BuildContext context) {
    double _horizontalPadding = MediaQuery.of(context).size.width * 0.05;

    return Container(
      color: AppTheme.primaryColor,
      constraints: BoxConstraints(maxWidth: Dimens.responsiveMobileWidth),
      padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: mobile,
    );
  }
}

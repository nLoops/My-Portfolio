import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/assets.dart';
import 'package:flutter_portfolio/res/dimens.dart';
import 'package:flutter_portfolio/widgets/home_app_bar.dart';
import 'package:flutter_portfolio/widgets/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        web: Scaffold(
          appBar: const HomeAppBar(),
          body: ListView(
            shrinkWrap: true,
            children: [_heroSection(context)],
          ),
        ),
        mobile: Scaffold());
  }

  Widget _heroSection(BuildContext context) {
    return Container(
      height: Dimens.responsiveWebWidth,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: Image.asset(Assets.heroImage),
            top: 0,
            right: 0,
          ),
          Positioned(
            top: 300,
            right: 300,
            child: Text(
              'Ahmed is a mobile developer who loves\nto build robust apps and services.',
              style: GoogleFonts.archivo(
                  fontSize: 40.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

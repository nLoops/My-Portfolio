import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/assets.dart';
import 'package:flutter_portfolio/res/const_data.dart';
import 'package:flutter_portfolio/res/dimens.dart';
import 'package:flutter_portfolio/widgets/circle_icon_widget.dart';
import 'package:flutter_portfolio/widgets/home_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_layout_builder/responsive_layout_builder.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(builder: (context, size) {
      if (size.size == LayoutSize.desktop) {
        return Scaffold(
          appBar: HomeAppBar(),
          body: ListView(
            children: [const _WebHomeWidget()],
          ),
        );
      }

      if (size.size == LayoutSize.tablet) {
        return Container();
      }

      if (size.size == LayoutSize.mobile) {
        return Container();
      }

      return Container();
    });
  }
}

class _WebHomeWidget extends StatelessWidget {
  const _WebHomeWidget({Key key});

  @override
  Widget build(BuildContext context) {
    double _screenSize = MediaQuery.of(context).size.width;
    double _width = _screenSize - (_screenSize * 0.10);

    return Container(
      height: Dimens.webViewPortSize,
      padding: const EdgeInsets.only(top: 16.0),
      margin: EdgeInsets.symmetric(horizontal: _screenSize * 0.10),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: Image.asset(Assets.heroImage),
            right: _width * 0.15,
          ),
          Positioned(
            child: Container(
                width: _width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmed is a mobile developer who loves to build robust apps and services.',
                      style: GoogleFonts.archivo(
                          fontSize: 40.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 2.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1.0)),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'I do freelance projects for both platforms Android & IOS.',
                      style: GoogleFonts.nunito(
                          fontSize: 19, color: const Color(0xFF868686)),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        for (var m in socialMediaData) CircleIconWidget(data: m)
                      ],
                    )
                  ],
                )),
            right: _width * 0.30,
            bottom: _width * 0.10,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

import '../my_button_widget.dart';

class MobileProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String type;
  final String googleUrl;
  final String appUrl;
  final String imgUrl;

  const MobileProjectCard(
      {Key key,
        this.title,
        this.description,
        this.type,
        this.appUrl,
        this.googleUrl,
        this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF36393d),
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(Dimens.dimenNormal),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.archivo(
                fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Dimens.dimenNormal,
          ),
          Image.asset(imgUrl, height: 300,),
          SizedBox(
            height: Dimens.dimenNormal,
          ),
          Text(
            'MOBILE APP DEVELOPER',
            style: GoogleFonts.teko(fontSize: 14.0, letterSpacing: 0.25),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Text(
              type,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Flexible(
            child: Text(
              description,
              style: GoogleFonts.roboto(fontSize: 14.0),
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          buildStoreButtons(context)
        ],
      ),
    );
  }

  Row buildStoreButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: googleUrl != null,
          child: MyButtonWidget(
            title: 'GOOGLE PLAY',
            url: googleUrl,
          ),
        ),
        SizedBox(
          width: Dimens.dimenNormal,
        ),
        Visibility(
          visible: appUrl != null,
          child: MyButtonWidget(
            title: 'APP STORE',
            url: appUrl,
          ),
        )
      ],
    );
  }
}

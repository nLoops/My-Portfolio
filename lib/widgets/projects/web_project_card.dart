import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

import '../my_button_widget.dart';

class WebHomeProjectPreview extends StatelessWidget {
  final String title;
  final String description;
  final String type;
  final String googleUrl;
  final String appUrl;
  final String imgUrl;

  const WebHomeProjectPreview(
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
      margin: const EdgeInsets.all(24.0),
      color: const Color(0xFF36393d),
      height: Dimens.webViewPortSize,
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [buildProjectDetails(context), Spacer(), buildImage()],
        ),
      ),
    );
  }

  Expanded buildProjectDetails(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.archivo(
                fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 150.0,
          ),
          Text(
            'MOBILE APP DEVELOPER',
            style: GoogleFonts.teko(fontSize: 14.0, letterSpacing: 0.25),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Text(
              type,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Text(
            description,
            style: GoogleFonts.roboto(fontSize: 14.0),
          ),
          SizedBox(
            height: 24.0,
          ),
          buildStoreButtons(context)
        ],
      ),
    );
  }

  Expanded buildImage() => Expanded(flex: 7, child: Image.asset(imgUrl));

  Row buildStoreButtons(BuildContext context) {
    return Row(
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

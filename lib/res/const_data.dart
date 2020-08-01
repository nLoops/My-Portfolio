import 'package:flutter/cupertino.dart';
import 'package:flutter_portfolio/res/assets.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/widgets/circle_icon_widget.dart';
import 'package:flutter_portfolio/widgets/projects/web_project_card.dart';

const projectsForWeb = <Widget>[
  const WebHomeProjectPreview(
    title: 'HAGAAT',
    description:
        'Multi module platform with client and admin side, 100% written in KOTLIN using google services and fcm.',
    type: Constants.typeEcommerce,
    googleUrl: Constants.hagaatGooglePlay,
    imgUrl: Assets.hagaat,
  ),
  const WebHomeProjectPreview(
    title: 'AL-MARWANI FOR SPICES',
    description:
        'Cross platform e-commerce app built with flutter, register with mobile number and contains a notifications system as well real time events.',
    type: Constants.typeEcommerce,
    appUrl: Constants.marwaniSpicesAppStore,
    googleUrl: Constants.marwaniSpicesGooglePlay,
    imgUrl: Assets.spices,
  ),
  const WebHomeProjectPreview(
    title: 'AYZEN',
    description:
        'This company utility app help clients building their bathroom shower in just three steps and allow to browse and buy company products, built with flutter.',
    type: 'A BATHROOM SHOWER BUILDER',
    appUrl: Constants.ayzenAppStore,
    googleUrl: Constants.ayzenGooglePlay,
    imgUrl: Assets.ayzen,
  ),
  const WebHomeProjectPreview(
    title: 'AL-MARWANI STORE',
    description:
        'An ecommerce mobile apps built with flutter for Android and IOS, using http calls to handle client side services.',
    type: Constants.typeEcommerce,
    appUrl: Constants.marwaniStoreAppStore,
    googleUrl: Constants.marwaniStoreGooglePlay,
    imgUrl: Assets.store,
  ),
  const WebHomeProjectPreview(
    title: 'NTASKS',
    description:
        'Add your notes, todos, audio-notes easily and display weekly and monthly reports, this app built with pure JAVA.',
    type: 'A TASK ORGANIZER APP',
    googleUrl: Constants.ntasksGooglePlay,
    imgUrl: Assets.ntasks,
  ),
];

const socialMediaIcons = <Widget>[
  const CircleIconWidget(
    data: {"icon": Assets.github, "url": Constants.githubUrl},
  ),
  const CircleIconWidget(
    data: {"icon": Assets.linkedIn, "url": Constants.linkedInUrl},
  ),
  const CircleIconWidget(
    data: {"icon": Assets.twitter, "url": Constants.twitterUrl},
  )
];

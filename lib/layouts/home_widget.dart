import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/app_themes.dart';
import 'package:flutter_portfolio/res/assets.dart';
import 'package:flutter_portfolio/res/const_data.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/res/dimens.dart';
import 'package:flutter_portfolio/widgets/circle_icon_widget.dart';
import 'package:flutter_portfolio/widgets/home_app_bar.dart';
import 'package:flutter_portfolio/widgets/my_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_layout_builder/responsive_layout_builder.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(builder: (context, size) {
      if (size.size == LayoutSize.desktop) {
        return const _MainDesktopTabletWidget();
      }

      if (size.size == LayoutSize.tablet) {
        return const _MainDesktopTabletWidget();
      }

      if (size.size == LayoutSize.mobile) {
        return _MainMobileWidget();
      }

      return Container();
    });
  }
}

class _MainDesktopTabletWidget extends StatelessWidget {
  const _MainDesktopTabletWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: ListView(
        children: [const _WebHomeWidget(), ...projectsForWeb],
      ),
    );
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
            child: const _AnimatedHeroImage(),
            right: _width * 0.15,
          ),
          Positioned(
            child: _AnimatedHeroDetails(
              width: (_width * 0.5),
            ),
            right: _width * 0.30,
            bottom: _width * 0.10,
          ),
        ],
      ),
    );
  }
}

class _AnimatedHeroImage extends StatelessWidget {
  const _AnimatedHeroImage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 200, end: 0),
      duration: const Duration(milliseconds: 300),
      builder: (_, value, child) {
        return Transform.translate(
          offset: Offset(value, 0),
          child: child,
        );
      },
      child: Image.asset(Assets.heroImage),
    );
  }
}

class _AnimatedHeroDetails extends StatelessWidget {
  final double width;

  const _AnimatedHeroDetails({Key key, @required this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 100, end: 0),
      duration: const Duration(milliseconds: 300),
      builder: (_, value, child) {
        return Transform.translate(
          offset: Offset(0, value),
          child: child,
        );
      },
      child: Container(
        width: width,
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
              children: socialMediaIcons,
            )
          ],
        ),
      ),
    );
  }
}

class _MainMobileWidget extends StatefulWidget {
  @override
  __MainMobileWidgetState createState() => __MainMobileWidgetState();
}

class __MainMobileWidgetState extends State<_MainMobileWidget> {
  int _currentIdx = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(context),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dimenNormal, vertical: 8.0),
        child: buildPageView(),
      ),
    );
  }

  PageView buildPageView() {
    return PageView(
      onPageChanged: (i) {
        setState(() {
          _currentIdx = i;
        });
      },
      controller: _pageController,
      children: [const _MobileHomeWidget(), const _MobileProjectWidget()],
    );
  }

  BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedLabelStyle:
            Theme.of(context).textTheme.subtitle2.apply(color: Colors.grey),
        selectedLabelStyle: Theme.of(context).textTheme.subtitle2,
        backgroundColor: AppTheme.primaryColor,
        onTap: (idx) {
          _pageController.animateToPage(idx,
              duration: const Duration(milliseconds: 150),
              curve: Curves.linear);
        },
        currentIndex: _currentIdx,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'HOME',
              )),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.phone_android,
              ),
              title: Text(
                'PROJECTS',
              ))
        ]);
  }
}

class _MobileHomeWidget extends StatelessWidget {
  const _MobileHomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'AHMED IBRAHIM',
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          height: Dimens.dimenNormal,
        ),
        Image.asset(
          Assets.avatar,
          width: 200.0,
          height: 200.0,
        ),
        SizedBox(
          height: Dimens.dimenNormal,
        ),
        Text(
          'Ahmed is a mobile developer who loves to build robust apps and services.',
          style:
              GoogleFonts.archivo(fontSize: 24.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: Dimens.dimenNormal,
        ),
        Container(
          height: 2.0,
          width: 100.0,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(1.0)),
        ),
        SizedBox(
          height: Dimens.dimenNormal,
        ),
        Text(
          'I do freelance projects for both platforms Android & IOS.',
          style:
              GoogleFonts.nunito(fontSize: 19, color: const Color(0xFF868686)),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 24.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: socialMediaIcons,
        )
      ],
    );
  }
}

class _MobileProjectWidget extends StatelessWidget {
  const _MobileProjectWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: projectsForMobile,
    );
  }
}

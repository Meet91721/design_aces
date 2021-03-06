import 'package:design_aces/screens/aboutUs/widgets/carousel.dart';
import 'package:design_aces/screens/widgets/contact_us.dart';
import 'package:design_aces/screens/widgets/drawer.dart';
import 'package:design_aces/screens/widgets/responsive.dart';
import 'package:design_aces/screens/widgets/topbar_content.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final ScrollController scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListner() {
    setState(() {
      _scrollPosition = scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    scrollController.addListener(_scrollListner);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.4
        ? _scrollPosition / (screenSize.height * 0.4)
        : 1;
    return Scaffold(
      appBar: Responsive.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Colors.blueGrey.shade900
                  .withOpacity(_opacity < 0.6 ? 0.6 : _opacity),
              elevation: 0,
              title: GestureDetector(
                onTap: () => context.vxNav.popToRoot(),
                child: Text(
                  'ACES',
                  style: TextStyle(
                    color: Colors.blueGrey.shade100,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContent(
                opacity: _opacity < 0.6 ? 0.6 : _opacity,
                scrollController: scrollController,
              ),
            ),
      drawer: ExploreDrawer(
        scrollController: scrollController,
      ),
      body: SingleChildScrollView(
          controller: scrollController,
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Image(
                      image: AssetImage('assets/images/logo/ACES.png'),
                      fit: BoxFit.contain,
                      height: 200,
                      width: 200,
                    ),
                    Image(
                      image: AssetImage('assets/images/logo/NU.png'),
                      height: 200,
                      width: 200,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(70, 16, 70, 16),
                child: Center(
                  child: Text(
                    'Association of Computer Engineering Students (ACES), was established in 2001 by the Department of Computer Science and Engineering. All the students of the Department are members of ACES. ACES aims to make students technically stronger by organising various workshops and seminars on the latest technologies. The organisation also contributes to the betterment of society by organising socially relevant technical activities.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Montserrat',
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(70, 16, 70, 16),
                child: Center(
                  child: Text(
                    'ACES aims to make students technically stronger by organising various workshops and seminars on the latest technologies. The organisation also contributes to the betterment of society by organising socially relevant technical activities.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Montserrat',
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              const DestinationCarousel(),
              const SizedBox(
                height: 29,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(70, 16, 70, 16),
                child: Center(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Montserrat',
                        fontSize: 20),
                  ),
                ),
              ),
              const ContactUs(),
            ],
          )),
    );
  }
}

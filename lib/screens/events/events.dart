import 'package:design_aces/screens/widgets/contact_us.dart';
import 'package:design_aces/screens/widgets/drawer.dart';
import 'package:design_aces/screens/widgets/responsive.dart';
import 'package:design_aces/screens/widgets/topbar_content.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListner() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListner);
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
              title: Text(
                'ACES',
                style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContent(
                opacity: _opacity < 0.6 ? 0.6 : _opacity,
              ),
            ),
      drawer: const ExploreDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'WebACES',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.blueGrey,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/images/events/WebACES/1.png'),
                height: 400,
                width: 800,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Conducted on 29 and 30 December.\nAlso had some fun activities such as Meme making competition and Skribble',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(height: 5),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Teacher's Day celebration",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.blueGrey,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/images/events/Teachers/1.png'),
                height: 400,
                width: 800,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Celebrated in online mode on WEBEX',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(height: 5),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Foundation Day",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.blueGrey,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Responsive.isSmallScreen(context)
                  ? Column(
                      children: const [
                        Image(
                          image: AssetImage(
                              'assets/images/events/Foundation/2.jpg'),
                          height: 400,
                          width: 700,
                        ),
                        Image(
                          image: AssetImage(
                              'assets/images/events/Foundation/3.jpg'),
                          height: 400,
                          width: 700,
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: const AssetImage(
                              'assets/images/events/Foundation/2.jpg'),
                          height: 400,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image(
                          image: const AssetImage(
                              'assets/images/events/Foundation/3.jpg'),
                          height: 400,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ],
                    ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(height: 5),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Training program on Research Methodology',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.blueGrey,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/images/events/Research/1.png'),
                height: 400,
                width: 800,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 2,
            ),
            const ContactUs()
          ],
        ),
      ),
    );
  }
}

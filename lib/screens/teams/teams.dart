import 'package:design_aces/screens/widgets/contact_us.dart';
import 'package:design_aces/screens/widgets/drawer.dart';
import 'package:design_aces/screens/widgets/responsive.dart';
import 'package:design_aces/screens/widgets/topbar_content.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  late ScrollController scrollController = ScrollController();
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
        child: Responsive.isSmallScreen(context)
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ProfileCard(
                          address: '1.jpg',
                          name: 'Kanisha Shah',
                          post: 'President'),
                      SizedBox(
                        width: 15,
                      ),
                      ProfileCard(
                        address: '2.jpg',
                        name: 'Meet Vora',
                        post: 'Vice President',
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ProfileCard(
                        address: '3.jpeg',
                        name: 'Kunj Thakkar',
                        post: 'General Secretary',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ProfileCard(
                        address: '4.jpg',
                        name: 'Manan Patel',
                        post: 'Joint Secratary',
                      )
                    ],
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ProfileCard(
                        address: '5.jpg',
                        name: 'Akshat Shah',
                        post: 'Oranizing Secratory',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ProfileCard(
                        address: '6.jpg',
                        name: 'Naman Thakkar',
                        post: 'Managing Director',
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ProfileCard(
                        address: '7.jpg',
                        name: 'Mrunal Shah',
                        post: 'Director General',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ProfileCard(
                        address: '8.jpeg',
                        name: 'Kalp Mepani',
                        post: 'Treasure',
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ProfileCard(
                        address: '9.jpg',
                        name: 'Shivam Panchal',
                        post: 'Technical Head',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ProfileCard(
                        address: '10.png',
                        name: 'Yagnik Thummar',
                        post: 'Technical Head',
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ProfileCard(
                        address: '11.jpg',
                        name: 'Ansh Ray',
                        post: 'Public Relation Officer',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ProfileCard(
                        address: '12.jpg',
                        name: 'Savani Yash',
                        post: 'Editor',
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ProfileCard(
                        address: '13.jpg',
                        name: 'Gaurav Sakariya',
                        post: 'Creative Head',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ProfileCard(
                        address: '14.jpg',
                        name: 'Sachi Chaudhary',
                        post: 'Maretting Director',
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ProfileCard(
                        address: '15.jpg',
                        name: 'Aayush Shah',
                        post: 'Graphic Designer',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ProfileCard(
                        address: '16.png',
                        name: 'Savan Vaghani',
                        post: 'Membership Chair',
                      ),
                    ],
                  ),
                  const ContactUs(),
                ],
              )
            : Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ProfileCard(
                            address: '1.jpg',
                            name: 'Kanisha Shah',
                            post: 'President'),
                        ProfileCard(
                          address: '2.jpg',
                          name: 'Meet Vora',
                          post: 'Vice President',
                        ),
                        ProfileCard(
                          address: '3.jpeg',
                          name: 'Kunj Thakkar',
                          post: 'General Secretary',
                        ),
                        ProfileCard(
                          address: '4.jpg',
                          name: 'Manan Patel',
                          post: 'Joint Secratary',
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ProfileCard(
                          address: '5.jpg',
                          name: 'Akshat Shah',
                          post: 'Oranizing Secratory',
                        ),
                        ProfileCard(
                          address: '6.jpg',
                          name: 'Naman Thakkar',
                          post: 'Managing Director',
                        ),
                        ProfileCard(
                          address: '7.jpg',
                          name: 'Mrunal Shah',
                          post: 'Director General',
                        ),
                        ProfileCard(
                          address: '8.jpeg',
                          name: 'Kalp Mepani',
                          post: 'Treasure',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ProfileCard(
                          address: '9.jpg',
                          name: 'Shivam Panchal',
                          post: 'Technical Head',
                        ),
                        ProfileCard(
                          address: '10.png',
                          name: 'Yagnik Thummar',
                          post: 'Technical Head',
                        ),
                        ProfileCard(
                          address: '11.jpg',
                          name: 'Ansh Ray',
                          post: 'Public Relation Officer',
                        ),
                        ProfileCard(
                          address: '12.jpg',
                          name: 'Savani Yash',
                          post: 'Editor',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ProfileCard(
                          address: '13.jpg',
                          name: 'Gaurav Sakariya',
                          post: 'Creative Head',
                        ),
                        ProfileCard(
                          address: '14.jpg',
                          name: 'Sachi Chaudhary',
                          post: 'Maretting Director',
                        ),
                        ProfileCard(
                          address: '15.jpg',
                          name: 'Aayush Shah',
                          post: 'Graphic Designer',
                        ),
                        ProfileCard(
                          address: '16.png',
                          name: 'Savan Vaghani',
                          post: 'Membership Chair',
                        ),
                      ],
                    ),
                  )
                ],
              ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard(
      {Key? key, required this.address, required this.name, required this.post})
      : super(key: key);
  final String address;
  final String post;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image(
        image: AssetImage(
          'assets/images/members/$address',
        ),
        fit: BoxFit.contain,
        height: 150,
        width: 150,
      ),
      Text(
        post,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      Text(name)
    ]);
  }
}

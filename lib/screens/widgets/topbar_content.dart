import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

import '../../my_routes.dart';

class TopBarContent extends StatefulWidget {
  final double opacity;
  final ScrollController scrollController;

  TopBarContent(
      {Key? key, required this.opacity, required this.scrollController})
      : super(key: key);

  @override
  _TopBarContentState createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContent> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  get scrollController => null;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.blueGrey.shade900.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  context.vxNav.popToRoot();
                },
                child: Text(
                  'ACES',
                  style: TextStyle(
                    color: Colors.blueGrey.shade100,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: screenSize.width / 8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await context.vxNav
                                  .push(Uri.parse(MyRoutes.about));
                            },
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: _isHovering[0]
                                      ? Colors.blue.shade300
                                      : Colors.white70),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await context.vxNav
                                  .push(Uri.parse(MyRoutes.teams));
                            },
                            child: Text(
                              'Team',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: _isHovering[1]
                                      ? Colors.blue.shade300
                                      : Colors.white70),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    //
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await context.vxNav
                                  .push(Uri.parse(MyRoutes.events));
                            },
                            child: Text(
                              'Events',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: _isHovering[2]
                                      ? Colors.blue.shade300
                                      : Colors.white70),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[2],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () async {
                  await context.vxNav.push(Uri.parse(MyRoutes.contact));
                },
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    color: _isHovering[3] ? Colors.white : Colors.white70,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

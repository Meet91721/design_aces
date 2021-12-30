import 'package:design_aces/screens/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _launchInBrowser(String url) async {
      if (!await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      )) {
        throw 'Could not launch $url';
      }
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blueGrey[900],
      child: Responsive.isSmallScreen(context)
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\nConnect us on:\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blueGrey[300],
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchInBrowser(lI);
                          },
                          child: Text(
                            'LinkedIn',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey[100],
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            _launchInBrowser(iG);
                          },
                          child: Text(
                            'Instagram',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey[100],
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            _launchInBrowser(fb);
                          },
                          child: Text(
                            'Facebook',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey[100],
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Visit us at:\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blueGrey[300],
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchInBrowser(wB);
                          },
                          child: Text(
                            'Official Website',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey[100],
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Nirma University, Ahmedabad',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blueGrey[100],
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 16),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Contact Us:',
                          style: TextStyle(
                            color: Colors.blueGrey[300],
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchInBrowser(lI);
                          },
                          child: Text(
                            'LinkedIn',
                            style: TextStyle(
                              color: Colors.blueGrey[100],
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            _launchInBrowser(iG);
                          },
                          child: Text(
                            'Instagram',
                            style: TextStyle(
                              color: Colors.blueGrey[100],
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            _launchInBrowser(fb);
                          },
                          child: Text(
                            'FaceBook',
                            style: TextStyle(
                              color: Colors.blueGrey[100],
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  width: 4,
                  height: 150,
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Visit Us:',
                        style: TextStyle(
                          color: Colors.blueGrey[300],
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchInBrowser(wB);
                        },
                        child: Text(
                          'Website',
                          style: TextStyle(
                            color: Colors.blueGrey.shade300,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Address: ',
                            style: TextStyle(
                              color: Colors.blueGrey.shade300,
                              fontSize: 16,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Nirma University, Ahmedabad',
                              style: TextStyle(
                                color: Colors.blueGrey.shade100,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }

  final String lI =
      'https://www.linkedin.com/company/association-of-computer-engineering-students/';
  final String iG = 'https://www.instagram.com/aces_it_nu/';
  final String wB = 'https://technology.nirmauni.ac.in/student_work/aces/';
  final String fb = 'https://www.facebook.com/aces.it.itnu/';
}

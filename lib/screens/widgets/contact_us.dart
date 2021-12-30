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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0, top: 5),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Contact Us:',
                    style: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: 22,
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
                        fontSize: 18,
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
                        fontSize: 18,
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
                        fontSize: 18,
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
                    fontSize: 22,
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
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                Text(
                  'Address:',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 18,
                  ),
                ),
                Flexible(
                  child: Text(
                    'Nirma University, Ahmedabad',
                    style: TextStyle(
                      color: Colors.blueGrey.shade100,
                      fontSize: 18,
                    ),
                  ),
                )
                // Row(
                //   mainAxisSize: MainAxisSize.min,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Address: \n',
                //       style: TextStyle(
                //         color: Colors.blueGrey.shade300,
                //         fontSize: 18,
                //       ),
                //     ),
                //     Flexible(
                //       child: Text(
                //         'Nirma University, Ahmedabad',
                //         style: TextStyle(
                //           color: Colors.blueGrey.shade100,
                //           fontSize: 18,
                //         ),
                //       ),
                //     )
                //   ],
                // ),
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

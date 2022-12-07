import 'package:flutter/material.dart';

import '../constants.dart';

class AboutUs extends StatelessWidget {
  TextSpan myBoldText(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        // fontFamily: 'RobotoMono',
        color: primaryFontColor,
      ),
    );
  }

  TextSpan mySimpleText(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        fontSize: 18,
        // fontFamily: 'RobotoMono',
        color: Colors.white70,
      ),
    );
  }

  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      // color: bgColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: newColor,
                borderRadius: const BorderRadius.all(Radius.circular(18)),
                border: Border.all(
                  color: primaryColor,
                  width: 3,
                ),
              ),
              child: Text(
                'About Us',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      // fontFamily: 'RobotoMono',
                      color: primaryFontColor,
                    ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: const BoxDecoration(
                color: newColor,
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // myText(
                  //     'We build simple, satisfactory, quick and quality products for our clients '),
                  // myText(
                  //     'in different domains. We have a team of proficient developers who work on '),
                  // myText(
                  //     'the projects while they are live and also provide services afterwards too. '),
                  // myText(
                  //     'Our services include domain Like Application development, Web development '),
                  // myText(
                  //     'Software Development, Data Management,Cloud Infrastructure, Blockchain as '),
                  // myText(
                  //     'a Service,Software as a Service, Platform as a Service and Cross-Platform '),
                  // myText(
                  //     'Integrations too. Our company and the employees believe strongly in the'),
                  // myText('following 4 values:'),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: newColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    width: width * 0.6,
                    child: const Text(
                      'We build simple, satisfactory, quick and quality products for our clients in different domains. We have a team of proficient developers who work on the projects while they are live and also provide services afterwards too. Our services include domain Like Application development, Web development, Software Development, Data Management,Cloud Infrastructure, Blockchain as Service, Software as a Service, Platform as a Service and Cross-Platform Integrations too. Our company and the employees believe strongly in the following 4 values:',
                      style: TextStyle(
                        // fontFamily: 'RobotoMono',
                        fontSize: 18,
                        color: primaryFontColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: newColor,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          myBoldText('1. SIMPLE  '),
                          mySimpleText(
                              'solution which are easy to use and manage.  \n'),
                          myBoldText('2. SATISFACTORY  '),
                          mySimpleText('clients\n'),
                          myBoldText('3. QUICK  '),
                          mySimpleText('delivery according to the need.\n'),
                          myBoldText('4. QUALITY  '),
                          mySimpleText('should never be compromised\n'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

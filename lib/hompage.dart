import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<void> _launchAppStoreURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.ewoindustry.sellfish&pcampaignid=web_share';
    if (await canLaunchUrl(
      Uri.parse(url),
    )) {
      await launchUrl(
        Uri.parse(url),
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/splash.png',
                      height: height * 0.15,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                TextAnimator(
                  'SellFish',
                  incomingEffect:
                      WidgetTransitionEffects.incomingSlideInFromLeft(
                    delay: Duration(seconds: 1),
                    duration: Duration(seconds: 2),
                  ),
                  atRestEffect: WidgetRestingEffects.wave(effectStrength: 2),
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontSize: width * 0.1,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: _launchAppStoreURL,
                        child: Image.asset(
                          'assets/playstorebyicon8.png',
                          height: height * 0.15,
                          fit: BoxFit.contain,
                        ),
                      ),
                      InkWell(
                        onTap: _launchAppStoreURL,
                        child: Image.asset(
                          'assets/appstorebyicon8.png',
                          height: height * 0.15,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

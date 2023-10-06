import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sellfishing/core/util/app.info.dart';
import 'package:sellfishing/meta/views/content/about.dart';
import 'package:sellfishing/meta/views/general/footer.dart';
import 'package:sellfishing/meta/views/general/navbar.dart';
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
    final parentSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: APPBAR.build(context),
      body: Scrollbar(
        thumbVisibility: kIsWeb,
        trackVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              // WowlsBanner(
              //   height: (parentSize.height / 4) * 1.6,
              // ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextAnimator(
                  'SellFish',
                  incomingEffect:
                      WidgetTransitionEffects.incomingSlideInFromLeft(
                    delay: Duration(seconds: 1),
                    duration: Duration(seconds: 2),
                  ),
                  atRestEffect: WidgetRestingEffects.wave(effectStrength: 2),
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontSize: (parentSize.width / 7) * 1.6,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

              WowlsAbout(
                height: parentSize.height / 4,
              ),

              // WowlsProducts(
              //   height: parentSize.height / 4,
              // ),

              Padding(
                padding: EdgeInsets.all(
                  parentSize.width * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: _launchAppStoreURL,
                      child: Image.asset(
                        'assets/playstorebyicon8.png',
                        height: parentSize.height * 0.15,
                        fit: BoxFit.contain,
                      ),
                    ),
                    InkWell(
                      onTap: _launchAppStoreURL,
                      child: Image.asset(
                        'assets/appstorebyicon8.png',
                        height: parentSize.height * 0.15,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              ConstrainedBox(
                constraints: BoxConstraints(minHeight: 100),
                child: WowlsFooter(),
              ),
              
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAboutDialog(
            context: context,
            applicationName: AppInformation.name,
            applicationIcon: Image.asset(
              'assets/splash.png',
              height: 65,
              fit: BoxFit.contain,
            ),
            applicationVersion: AppInformation.version,
            applicationLegalese: AppInformation.legalese,
            children: AppInformation.content,
          );
        },
        tooltip: 'About',
        child: Icon(Icons.info),
      ),
    );
  }
}

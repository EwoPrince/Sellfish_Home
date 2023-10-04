import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.width * 0.08,
            width: size.width * 0.08,
            child: Image.asset(
              'assets/splash.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Text('SellFish',
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: size.width * 0.1,
                    fontWeight: FontWeight.w700,
                  )),
            ),
          ),
          SizedBox(
            height: size.height * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(
                            'https://play.google.com/store/apps/details?id=com.ewoindustry.sellfish&pcampaignid=web_share'),
                        mode: LaunchMode.externalApplication);
                  },
                  child: SizedBox(
                    height: size.height * 0.1,
                    child: Image.asset(
                      'assets/playstore.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(
                            'https://play.google.com/store/apps/details?id=com.ewoindustry.sellfish&pcampaignid=web_share'),
                        mode: LaunchMode.externalApplication);
                  },
                  child: SizedBox(
                    height: size.height * 0.1,
                    child: Image.asset(
                      'assets/appstore.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

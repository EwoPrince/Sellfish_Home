import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sellfishing/app/shared/theme.wrappedowls.dart';
import 'package:sellfishing/core/util/global.functions.dart';
import 'package:sellfishing/core/util/helpers/link.helper.dart';

abstract class APPBAR {
  static Widget buildLeading() {
    return IconButton(
      onPressed: launchLink(
          'https://play.google.com/store/apps/details?id=com.ewoindustry.sellfish&pcampaignid=web_share'),
      icon: Image.asset(
        'assets/splash.png',
        height: 100,
        fit: BoxFit.contain,
      ),
    );
  }

  static Widget buildToggleTheme() {
    return Row(
      children: [
        Switch(
          value: UuuUhuThemes.currentTheme,
          onChanged: (value) {
            GlobalFunctions.setGlobalState(() {
              UuuUhuThemes.currentTheme = value;
            });
          },
        ),
        Icon(
          UuuUhuThemes.currentTheme ? FontAwesomeIcons.moon : Icons.wb_sunny,
        ),
        SizedBox(
          width: 4,
        ),
      ],
    );
  }

  // static Widget buildActions(BuildContext context) {
  //   final ctxSize = MediaQuery.of(context).size;
  //   return ToggleButtons(
  //     isSelected: [false, false],
  //     renderBorder: false,
  //     constraints: BoxConstraints.tight(
  //       Size.fromWidth(
  //         min<double>(ctxSize.width * 0.28, 100),
  //       ),
  //     ),
  //     children: [
  //       ElevatedButton(
  //         onPressed: () {},
  //         style: ButtonStyle(
  //           backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
  //         ),
  //         child: Text('DevTools'),
  //       ),
  //       ElevatedButton(
  //         onPressed: () {},
  //         style: ButtonStyle(
  //           backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
  //         ),
  //         child: Text('Products'),
  //       ),
  //     ],
  //   );
  // }

  static AppBar build(BuildContext context) {
    return AppBar(
      leading: buildLeading(),
      actions: [
        // buildActions(context),
        SizedBox(
          width: 6,
        ),
        buildToggleTheme(),
      ],
    );
  }
}

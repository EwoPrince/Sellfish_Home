import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sellfishing/app/shared/theme.enum.dart';
import 'package:sellfishing/app/shared/theme.wrappedowls.dart';

class WowlsFooter extends StatelessWidget {
  final Color? backgroundColor;
  final Alignment alignment;
  final EdgeInsetsGeometry padding;
  final Widget? child;
  final int _enterpriseBirthDate;

  const WowlsFooter({
    Key? key,
    this.backgroundColor,
    this.alignment = Alignment.center,
    this.padding = const EdgeInsets.all(5.0),
    this.child,
  })  : _enterpriseBirthDate = 2022,
        super(key: key);

  List<Widget> buildChildren() {
    return [
      Image.asset(
        'assets/splash.png',
        height: 65,
        fit: BoxFit.contain,
      ),
      Text(
        'Powered by Ewoindustry',
        softWrap: true,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Text(
        '© SellFIsh $_enterpriseBirthDate-${DateTime.now().year}'
        '\nAll rights reserved',
        strutStyle: StrutStyle(fontWeight: FontWeight.w300),
        textAlign: TextAlign.center,
      ),
    ];
  }

  Widget _buildContent(BuildContext context, BoxConstraints constraints) {
    if (constraints.biggest.width > 400) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: buildChildren(),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: buildChildren(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ??
          UuuUhuThemes.currentPalette(
            UuuUhuPalette.DIALOG,
          ),
      child: Align(
        alignment: alignment,
        child: Padding(
          padding: padding,
          child: child ?? LayoutBuilder(builder: _buildContent),
        ),
      ),
    );
  }
}

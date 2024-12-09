import 'package:flutter/material.dart';

/// Class will generate standard flutter button, but with properties you can
/// modify look of the button
/// Also, you don't need to use this widget, you can use standard button widget
@immutable
class LinkedInButtonStandardWidget extends StatelessWidget {
  /// Create button with some default values, which you can of course change
  /// whenever you want
  const LinkedInButtonStandardWidget({
    required this.onTap,
    this.iconHeight = 30,
    this.iconWeight = 30,
    this.iconAssetPath = 'assets/linked_in_logo.png',
    this.buttonText = 'Sign in with LinkedIn',
    this.buttonColor = Colors.white,
    this.backgroundColor = Colors.blue,
    this.textPadding = const EdgeInsets.all(4),
    super.key,
  });

  final Function onTap;
  final double iconHeight;
  final double iconWeight;
  final String iconAssetPath;
  final String buttonText;
  final Color buttonColor;
  final Color backgroundColor;
  final EdgeInsets textPadding;

  @override
  Widget build(final BuildContext context) => Material(
        child: InkWell(
          onTap: onTap as void Function()?,
          child: Container(
            color: backgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  iconAssetPath,
                  package: 'linkedin_login',
                  width: iconWeight,
                  height: iconHeight,
                ),
                Container(
                  padding: textPadding,
                  color: backgroundColor,
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color: buttonColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

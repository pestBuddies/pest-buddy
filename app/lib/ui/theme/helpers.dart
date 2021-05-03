import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//
/// Colors for the App, these will also be set in the app theme,
/// but will be available here to be used throughout the app
//

final bodyFont = const Color(0xFF110b11);
//
/// App Colors from brand kit, all the color names have been
/// simplified. The color scheme is called Candy Land
//
final kitBlue = const Color(0xFF3468AD);
final kitGreen = const Color(0xFF3CB590);
final kitYellow = const Color(0xFFE9E749);
final kitPurple = const Color(0xFFC085DA);
final kitWhite = const Color(0xFFFFFDF6);
final kitPink = const Color(0xFFF4AFBA);

//
/// Padding Widgets
/// AllAround provides padding for LBRT
/// any padding that gets used often will be difined here[smallMediumPadding]

final smallPaddingAllAround = const EdgeInsets.all(8);
final mediumPaddingAllAround = const EdgeInsets.all(16);
final largePaddingAllAround = const EdgeInsets.all(32);

/// Will return EdgeInsets.fromLTRB
Container customPadding({l = 0.0, t = 0.0, r = 0.0, b = 0.0, child}) =>
    Container(
      padding: EdgeInsets.fromLTRB(l, t, r, b),
      child: child,
    );

//
/// Spacing Widgets
/// These widgets provide a simple spacing by defining height and width
/// with the SizedBox widget
//

//vertical spacing widgets
final SizedBox smallVerticalSpace = SizedBox(height: 8.0);
final SizedBox mediumVerticalSpace = SizedBox(height: 16.0);
final SizedBox largeVerticalSpace = SizedBox(height: 32.0);
final SizedBox giantVerticalSpace = SizedBox(height: 64.0);
//horizontal spacing widgets
final SizedBox smallHorizontalSpace = SizedBox(width: 8.0);
final SizedBox mediumHorizontalSpace = SizedBox(width: 16.0);
final SizedBox largeHorizontalSpace = SizedBox(width: 32.0);
final SizedBox giantHorizontalSpace = SizedBox(width: 64.0);

//
///Border radius for the app theme set to 10
//
final Radius themeRadius = Radius.circular(10);

//
/// Text Wrappers
/// the text wrappers, are functions that return a text widget
/// it will clean up the main layout of the views by keeping all of
/// the extra styles and themes applied within the function.
//
Text titleText(String title) {
  return Text(
    title,
    style: TextStyle(
      color: kitBlue,
      fontFamily: GoogleFonts.fredokaOne().fontFamily,
      fontSize: 28,
    ),
  );
}

Text bodyText(String body) {
  return Text(
    body,
    style: TextStyle(
      fontFamily: GoogleFonts.varelaRound().fontFamily,
      fontSize: 20,
      color: bodyFont,
    ),
  );
}

Text bodyTextLarge(String body) {
  return Text(
    body,
    style: TextStyle(
      fontFamily: GoogleFonts.varelaRound().fontFamily,
      fontSize: 24,
    ),
  );
}

Text bodyHeader(String header) {
  return Text(
    header,
    style: TextStyle(
      fontFamily: GoogleFonts.fredokaOne().fontFamily,
      fontSize: 32,
    ),
  );
}

Text loginRegHeader(String label) {
  return Text(
    label,
    style: TextStyle(
      fontFamily: GoogleFonts.fredokaOne().fontFamily,
      fontSize: 32,
      color: kitBlue,
    ),
  );
}

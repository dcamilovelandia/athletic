import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///The following  for navigator without context
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

/*
  Error codes known from service
 */
const String codeError1 = 'Invalid username and password combination';
const String codeError2 = 'The client credentials are invalid';
const String codeError3 = 'Authorization is required';
const String codeError4 =
    'Este correo ya se encuentra asignado a un usuario en BodyTech';
const String codeError5 =
    'Este documento ya se encuentra asignado a un usuario en BodyTech';

/* The following is burned body request for register user */
const String ip = "186.168.129.106";
const String createdAt = "2020-01-06T23:02:54.840-05:00";
const String userAgent =
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36";
final termsData = {"ip": ip, "created_at": createdAt, "user_agent": userAgent};

// App's icons
final SvgPicture icon = SvgPicture.asset('assets/logo.svg');

final SvgPicture background = SvgPicture.asset('assets/People.svg');

//Colors

// App's colors

const Color black = Color.fromRGBO(60, 60, 59, 1);
const Color blackDark = Color.fromRGBO(31, 0, 0, 1);
const Color white = Color.fromRGBO(255, 255, 255, 1);
const Color grey = Color.fromRGBO(227, 227, 227, 1);
const Color backgroundGray = Color.fromRGBO(227, 227, 227, 0.2);
const Color cardGray = Color.fromRGBO(243, 243, 241, 1);
const Color secondCardGray = Color.fromRGBO(196, 196, 196, 1);
const Color facebookBlue = Color.fromRGBO(54, 128, 215, 1);
const Color mainColor = Color.fromRGBO(229, 0, 81, 1);
const Color mainColorwithOpacity = Color.fromRGBO(221, 112, 43, 0.3);
const Color secondaryColor = Color.fromRGBO(255, 100, 105, 1);

//App's Grafiants
LinearGradient globalLinearGradiant(
    {Color? firstColor,
      Color? secondColor}) =>
    LinearGradient(
      begin: const Alignment(0.0, -0.3),
      end: const Alignment(-0.8, 0.0),
      // If there is a reservation render the card in orange
      colors: <Color>[firstColor ?? black, secondColor ?? black],
    );
//Global boxshadow

final globalBoxShadow = BoxShadow(
  color: grey.withOpacity(0.4),
  spreadRadius: 0.3,
  blurRadius: 0.3,
);

//Global_Borders
final BorderRadius globalRadius = BorderRadius.circular(5);
const BorderRadius globalInputRadius = BorderRadius.all( Radius.circular(5));
const BorderRadius globalRadiusOnlyBottom = BorderRadius.only(
    bottomLeft:  Radius.circular(0), bottomRight:  Radius.circular(5));
const BorderRadius globalRadiusOnlyTop =  BorderRadius.only(
    topLeft:  Radius.circular(0), topRight:  Radius.circular(5));

//BackGrounds
final Widget paintSvgBackground = Center(
  child: SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: background,
  ),
);

//global shadow

BoxShadow globalShadowGray = BoxShadow(
  color: grey.withOpacity(0.1),
  spreadRadius: 1,
  blurRadius: 20,
);

BoxShadow globalShadowBlack = BoxShadow(
  color: black.withOpacity(0.1),
  spreadRadius: 1,
  blurRadius: 20,
);

final Widget globalBackground = Container(color: white);

/* Bold font style
The following request a "Color" to add color to a TextStyle
*/
TextStyle bold12Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 12.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold13Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 13.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold15Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 15.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold16Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 16.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold17Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 17.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold18Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 20.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold20Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontFamily: fontFamily ?? "Lexendbold",
      fontSize: 25.0,
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold25Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 25.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold27Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 27.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold30Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 30.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold35Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 35.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold40Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 40.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

TextStyle bold72Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 72.0,
      fontFamily: fontFamily ?? 'LexendBold',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color);
}

/* Book font style
The following request a "Color" to add color to a TextStyle
*/
TextStyle book8Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 8.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book10Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 10.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book11Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 11.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book12Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 12.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book13Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
    fontSize: 13.0,
    fontFamily: fontFamily ?? 'LexendRegular',
    fontStyle: FontStyle.normal,
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
  );
}

TextStyle book14Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
    fontSize: 14.0,
    fontFamily: fontFamily ?? 'LexendRegular',
    fontStyle: FontStyle.normal,
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
  );
}

TextStyle book15Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 15.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book16Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 16.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book17Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 17.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book20Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 20.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book23Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 23.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book25Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 25.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book28Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 28.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle book30Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: 30.0,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

TextStyle bookanyText(
    {required Color color,
      FontWeight? fontWeight,
      String? fontFamily,
      double? size}) {
  return TextStyle(
      fontSize: size,
      fontFamily: fontFamily ?? 'LexendRegular',
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color);
}

/* Black font style
The following request a "Color" to add color to a TextStyle
*/
TextStyle black15Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontFamily: fontFamily ?? 'LexendExtraBold',
      color: color,
      fontSize: 15.0,
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w600);
}

TextStyle black20Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontFamily: fontFamily ?? 'LexendExtraBold',
      color: color,
      fontSize: 20.0,
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w600);
}

TextStyle black25Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontFamily: fontFamily ?? 'LexendExtraBold',
      color: color,
      fontSize: 25.0,
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w600);
}

/* Medium font style
The following request a "Color" to add color to a TextStyle
*/
TextStyle medium13Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontFamily: fontFamily ?? 'LexendMedium',
      color: color,
      fontSize: 13.0,
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700);
}

TextStyle medium15Text(
    {required Color color, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontFamily: fontFamily ?? 'LexendMedium',
      color: color,
      fontSize: 15.0,
      fontStyle: FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w700);
}

/*
 Variables of shadow
 */
List<BoxShadow> globalShadow = [
  BoxShadow(
    color: grey.withOpacity(0.8),
    spreadRadius: 1,
    blurRadius: 1,
  ),
];

// Files extension

const String filesExtension = "mp4";

const String videosDirectory = "73388f3c1a063c773914a16694261e0a";

///Url for support
const String supportUrl = 'soporte.app@bodytechcorp.com';
import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';

Color pearlShineColor = HexColor.fromHex('#E5E5E5');
Color redEuphoriaColor = HexColor.fromHex('#E50051');
Color backgroundWhiteColor = HexColor.fromHex('#F5F2F6');
Color greyUniverseColor = HexColor.fromHex('#CECECE');
Color blackUniverseColor = HexColor.fromHex('#3C3C3B');
const Color grey = Color.fromRGBO(227, 227, 227, 1);
const Color black = Color.fromRGBO(60, 60, 59, 1);


final List<BoxShadow> globalShadow = [BoxShadow(
    color: black.withOpacity(0.2),
    blurRadius: 0.5,
    spreadRadius: 0.5,
    offset: const Offset(0, 0.7)
)];


//Global_Borders
final BorderRadius globalRadius = BorderRadius.circular(5);
const BorderRadius globalInputRadius = BorderRadius.all( Radius.circular(5));
const BorderRadius globalRadiusOnlyBottom = BorderRadius.only(
    bottomLeft:  Radius.circular(0), bottomRight:  Radius.circular(5));
const BorderRadius globalRadiusOnlyTop =  BorderRadius.only(
    topLeft:  Radius.circular(0), topRight:  Radius.circular(5));

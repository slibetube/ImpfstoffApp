import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:impfapp/2_startseite.dart';
import 'package:impfapp/1_homescreen.dart';
import '3_regionBreisgauOrtenau.dart';
import '3_regionHeilbronn.dart';
import '3_regionKarlsruhe.dart';
import '3_regionMannheim(Rhein-Neckar).dart';
import '3_regionNeckarAlb.dart';
import '3_regionOberschwaben.dart';
import '3_regionOstalb.dart';
import '3_regionSchwarzwaldBodensee.dart';
import '3_regionStuttgart.dart';
import '2_terminbuchung_regionsauswahll.dart';
import '2_anspruchspruefung.dart';
import '0.2_firstscreen.dart';
import 'splashscreenanimationfirstscreen.dart';
import 'splashscreenanimationhomescreen.dart';
import 'splashscreen.dart';
import '2_buchungverwalten.dart';
import '0.1_colors.dart';
import 'testing.dart';


void main() => runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: 'Comforta',
        scaffoldBackgroundColor: farbehintergrund,
     ),
  initialRoute: SplashScreen.id,
  routes:{
      '': (context) => Homescreen(),
      '/homescreen': (context) => Homescreen(),
      '/startseite': (context) => Startseite(),
      '/regionenauswahl': (context) => Regionauswahl(),
      '/buchungverwalten': (context) => Buchungverwalten(),
      '/region1': (context) => RegionMannheim(),
      '/region2': (context) => RegionHeilbronn(),
      '/region3': (context) => RegionKarlsruhe(),
      '/region4': (context) => RegionBreisgau(),
      '/region5': (context) => RegionStuttgart(),
      '/region6': (context) => RegionNeckarAlb(),
      '/region7': (context) => RegionOstalb(),
      '/region8': (context) => RegionOberschwaben(),
      '/region9': (context) => RegionSchwarzwaldBodensee(),
      '/anspruchsprüfung': (context) => Anspruchspruefung(),
      '/dateneingabe': (context) => FirstScreen(),
      '/splashhomescreen': (context) => SplashAnimationHomescreen(),
      '/splashfirstscreen': (context) => SplashAnimationFirstScreen(),
      SplashScreen.id: (context) => SplashAnimationHomescreen(),
      '/testing': (context) => HtmlTesting(),

},
));







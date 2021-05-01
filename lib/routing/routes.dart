import 'package:comic_f_viewer/views/launcher/launcher_scaffold_new.dart';
import 'package:comic_f_viewer/views/splash_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'splash': (BuildContext context) => SplashPage(),
  'launcher':  (BuildContext context) => LauncherScaffoldFluent()
};
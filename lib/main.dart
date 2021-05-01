import 'dart:async';
import 'package:comic_f_viewer/routing/routes.dart';
import 'package:comic_f_viewer/services/auth/authetication_service.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());

  if (kIsWeb) {
    // Increase Skia cache size to support bigger images.
    const int megabyte = 1000000;
    SystemChannels.skia
        .invokeMethod('Skia.setResourceCacheMaxBytes', 512 * megabyte);
    await Future<void>.delayed(Duration.zero);
  }

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => AutheticationService())],
    child: _AppBootstrapper(),
  ));

}

class _AppBootstrapper extends StatefulWidget {
  @override
  __AppBootstrapperState createState() => __AppBootstrapperState();
}

class __AppBootstrapperState extends State<_AppBootstrapper> {
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Comic F* Viewer',
      initialRoute: 'launcher',
      routes: appRoutes,
      theme: ThemeData(brightness: Brightness.dark,
      navigationPanelTheme: NavigationPanelThemeData(highlightColor: Colors.transparent)
      )
    );
  }
}

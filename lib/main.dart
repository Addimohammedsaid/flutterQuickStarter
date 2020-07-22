import 'package:flutter/material.dart';
import 'package:flutterQuickStarter/locator.dart';
import 'managers/dialog_manager.dart';
import 'services/dialog_service.dart';
import 'services/navigation_service.dart';
import 'utils/app_theme.dart';
import 'utils/router.dart';
import 'utils/size_config.dart';

void main() async {
  // init getIt
  setupLocator();
  // Testing the responsive using Device Preview
  runApp(LayoutBuilder(builder: (context, constraints) {
    // Orientation Builder get the portrait or landscape view
    return OrientationBuilder(builder: (context, orientation) {
      // passe both constraints & the orientation to the sizeConfig Class and build all the logic there
      SizeConfig().init(constraints, orientation);
      return MyApp();
    });
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Quick Starter',
      key: locator<DialogService>().dialogNavigationKey,
      builder: (context, child) => Navigator(
        onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) => DialogManager(child: child)),
      ),
      navigatorKey: locator<NavigationService>().navigationKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: "/",
      onGenerateRoute: Router.generateRoute,
    );
  }
}

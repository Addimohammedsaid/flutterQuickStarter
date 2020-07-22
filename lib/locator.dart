import 'package:flutterQuickStarter/services/navigation_service.dart';
import 'package:get_it/get_it.dart';
import 'component/home_component.dart';
import 'component/main_component.dart';
import 'services/dialog_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // services
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());

  // components
  locator.registerFactory(() => MainComponent());
  locator.registerFactory(() => HomeComponent());
}

import 'package:get_it/get_it.dart';

import '../view_models/checkbox_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<CheckboxViewModel>(() => CheckboxViewModel());
}

import 'package:estate_project/src/core/database/db_service.dart';
import 'package:estate_project/src/core/database/routinedb.dart';
import 'package:estate_project/src/features/splash_onboarding/presentation/providers/view_model.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final getIt = GetIt.instance;

Future setupLocator() async {
  //registered the hive database and adapters
  await Hive.initFlutter();
  Hive.registerAdapter(RoutineDbAdapter());
//register your class and singletons here
  getIt.registerLazySingleton(() => SplashScreenProvider());
}

final allProviders = <SingleChildWidget>[
  ChangeNotifierProvider(create: (context) => SplashScreenProvider()),
  //the provider to make the descendants listen to the hive service
  ListenableProvider(create: (context) => HiveService()),
];

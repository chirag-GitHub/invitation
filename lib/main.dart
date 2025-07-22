// Importing necessary packages and files
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart'; // Package for dependency injection
import 'package:get_storage/get_storage.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/home/bloc/home_bloc.dart';
import 'package:quotanic/features/home/repository/home_repository.dart';
import 'package:quotanic/features/profile/bloc/profile_bloc.dart';
import 'package:quotanic/features/profile/repository/profile_repository.dart';
import 'package:quotanic/features/settings/bloc/setting_bloc.dart';
import 'package:quotanic/features/settings/repository/setting_repository.dart';

import 'package:quotanic/services/notification/notification_controller.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';
import 'package:quotanic/services/session_manager/session_keys.dart';
import 'package:quotanic/services/storage/local_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quotanic/configs/config.dart';
import 'package:timezone/data/latest.dart' as tzData;

// GetIt is a package used for service locator or to manage dependency injection
GetIt getIt = GetIt.instance;

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
// RemoteMessage? initialMessage;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tzData.initializeTimeZones();
  await GetStorage.init();
  await LocalStorage().clearValue(prefKeyProperty);
  await LocalStorage().clearValue(prefKeyArea);
  await SC().getUserFromPreference();
  // await NotificationController().firebaseInitialization;
  await getVersion();
  servicesLocator(); // Initializing service locator for dependency injection
  runApp(MyApp()
      // DevicePreview(enabled: !kReleaseMode,
      //   builder: (context) => MyApp(), // Wrap your app
      //     ),
      ); // Running the application
}

getVersion() async {
  var packageInfo = await PackageInfo.fromPlatform();
  AppHelper.minAppVersion = packageInfo.version;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Constructor for MyApp widget
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiBlocProvider(
        providers: getListOfProvider(),
        child: BlocBuilder<SettingBloc, SettingStates>(
          builder: (context, states) {
            return MaterialApp(
              builder: (context, child) => MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: TextScaler.linear(1.0)),
                  child: child!),
              debugShowCheckedModeBanner: false,
              navigatorKey: navigatorKey,
              title: 'project_setup Connects',
              themeMode: states.themeMode,
              theme: lightTheme,
              darkTheme: darkTheme,
              locale: Locale(states.langCode),
              themeAnimationStyle:
                  AnimationStyle(duration: Duration(milliseconds: 500)),
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              initialRoute: getInitialRoute(),
              onGenerateRoute: Routes.generateRoute, // Generating routes
            );
          },
        ),
      );
    });
  }

  getInitialRoute() {
    return RoutesName.dashboardScreen;
    if (SC.isLogin!) {
      if (kDebugMode) {
        return RoutesName.dashboardScreen;
      } else {
      return RoutesName.pinPasswordScreen;
      }
    } else {
      return RoutesName.loginScreen;
    }
  }
}

getListOfProvider() {
  return [
    BlocProvider(
      create: (context) => SettingBloc()
        ..add(SetInitialTheme())
        ..add(SetInitialLange()),
    ),
    BlocProvider(
      create: (context) => HomeBloc(homeApiRepository: getIt()),
    ),
    BlocProvider(
      create: (context) => ProfileBloc(profileApiRepository: getIt()),
    ),
    // BlocProvider(
    //   create: (context) => TicketBloc(ticketApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => ReadingBloc(readingApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => MeterBloc(meterApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => CommentBloc(commentApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => NotificationBloc(notificationApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => InvoiceBloc(invoiceApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) =>
    //       OutGoingInvoiceBloc(outgoingInvoiceApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => ContractBloc(contractApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => OffersBloc(offersApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => CaretakerBloc(caretakerBlocApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => BkaBloc(bkaApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => BroadcastBloc(broadcastApiRepository: getIt()),
    // ),
    // BlocProvider(
    //   create: (context) => JointVentureBloc(jointVentureApiRepository: getIt()),
    // ),  BlocProvider(
    //   create: (context) => TodoBloc(todoApiRepository: getIt()),
    // ),
  ];
}

// Function for initializing service locator
// Registering AuthHttpApiRepository as a lazy singleton for ApiRepository
void servicesLocator() {
  // getIt.registerLazySingleton<LoginApiRepository>(
  //         () => LoginApiRepositoryImpl());
  // getIt.registerLazySingleton<OTPApiRepository>(() => OtpApiRepositoryImpl());
  getIt.registerLazySingleton<HomeApiRepository>(() => HomeApiRepositoryImpl());
  getIt.registerLazySingleton<ProfileApiRepository>(
          () => ProfileRepositoryImpl());
  // getIt.registerLazySingleton<TicketApiRepository>(
  //         () => TicketApiRepositoryImpl());
  // getIt.registerLazySingleton<ReadingApiRepository>(
  //         () => ReadingApiRepositoryImpl());
  // getIt.registerLazySingleton<MeterApiRepository>(
  //         () => MeterApiRepositoryImpl());
  // getIt.registerLazySingleton<CommentApiRepository>(
  //         () => CommentApiRepositoryImpl());
  // getIt.registerLazySingleton<NotificationApiRepository>(
  //         () => NotificationApiRepositoryImpl());
  // getIt.registerLazySingleton<InvoiceApiRepository>(
  //         () => InvoiceApiRepositoryImpl());
  // getIt.registerLazySingleton<OutGoingInvoiceApiRepository>(
  //         () => OutGoingInvoiceApiRepositoryImpl());
  // getIt.registerLazySingleton<ContractApiRepository>(
  //         () => ContractApiRepositoryImpl());
  // getIt.registerLazySingleton<OffersApiRepository>(
  //         () => OffersApiRepositoryImpl());
  // getIt.registerLazySingleton<CaretakerApiRepository>(
  //         () => CaretakerApiRepositoryImpl());
  // getIt.registerLazySingleton<BkaApiRepository>(() => BkaApiRepositoryImpl());
  // getIt.registerLazySingleton<BroadcastApiRepository>(
  //         () => BroadcastApiRepositoryImpl());
  getIt.registerLazySingleton<SettingApiRepository>(
      () => SettingApiRepositoryImpl());
  // getIt.registerLazySingleton<JointVentureApiRepository>(
  //         () => JointVentureApiRepositoryImpl());
  // getIt.registerLazySingleton<TodoApiRepository>(
  //         () => TodoApiRepositoryImpl());
}

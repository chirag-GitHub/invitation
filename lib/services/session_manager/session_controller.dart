import 'dart:convert'; // Importing dart:convert for JSON encoding and decoding
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart'; // Importing Flutter material library
import 'package:quotanic/services/session_manager/session_keys.dart';
import 'package:package_info_plus/package_info_plus.dart';

// import '../../features/login/model/user_model.dart'; // Importing the user model for user data
import '../storage/local_storage.dart'; // Importing local storage for storing user data

/// A singleton class for managing user session data.
class SC {
  /// Instance of [LocalStorage] for accessing local storage.
  final LocalStorage sharedPreferenceClass = LocalStorage();

  /// Singleton instance of [SC].
  static final SC _session = SC._internal();

  /// Flag indicating whether the user is logged in or not.
  static bool? isLogin;

  ///Token for access api
  static String? accessToken;

  static String? userPin;

  static String? userLang;

  static String? appAndDeviceInfo;

  static ThemeMode? userThemeMode;

  /// Model representing the user data.
  static var user = Object();

  /// Private constructor for creating the singleton instance of [SC].
  SC._internal() {
    // Initialize default values
    isLogin = false;
  }

  //In Dart, a factory constructor is a special kind of constructor that can return an instance of the class,
  // potentially a cached or pre-existing instance, instead of always creating a new one.
  // It's defined using the factory keyword.
  // This is useful for implementing patterns like singletons or when you want to control instance creat
  //
  /// Factory constructor for accessing the singleton instance of [SC].
  factory SC() {
    return _session;
  }

  /// Saves user data into the local storage.
  ///
  /// Takes a [user] object as inputs and saves it into the local storage.
  Future<void> saveUserInPreference(dynamic user) async {
    try {
      await sharedPreferenceClass.setValue(prefKeyUserModel, jsonEncode(user));
      if (user.accessToken.isNotEmpty) {
        await sharedPreferenceClass.setValue(prefKeyToken, user.accessToken);
        await sharedPreferenceClass.setValue(prefIsLogin, 'true');
        var deviceInfo = await getDeviceInfo();
        await sharedPreferenceClass.setValue(prefKeyDeviceInfo, deviceInfo.toString());
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<Map<String, dynamic>> getDeviceInfo() async {
    try {
      final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      String version = packageInfo.version;
      String buildNumber = packageInfo.buildNumber;

      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
        return {
          'device': androidInfo.device,
          'model': androidInfo.model,
          'brand': androidInfo.brand,
          'version': androidInfo.version.release,
          'sdkInt': androidInfo.version.sdkInt,
          'identifier': androidInfo.id,
          'appVersion': version,
          'buildNumber': buildNumber,
        };
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
        return {
          'device': iosInfo.name,
          'model': iosInfo.model,
          'systemName': iosInfo.systemName,
          'systemVersion': iosInfo.systemVersion,
          'identifier': iosInfo.identifierForVendor,
          'appVersion': version,
          'buildNumber': buildNumber,
        };
      } else {
        return {'error': 'Unsupported platform'};
      }
    } catch (e) {
      return {'error': e.toString()};
    }
  }


  Future<void> saveUserPinInPreference(dynamic pin) async {
    await sharedPreferenceClass.setValue(prefKeyPin, pin);
  }

  Future<void> saveUserLangInPreference(dynamic language) async {
    await sharedPreferenceClass.setValue(prefKeyLang, language);
    var lang = await sharedPreferenceClass.readValue(prefKeyLang);
    SC.userLang = lang ?? 'de';
  }

  Future<void> saveUserThemeInPreference(dynamic theme) async {
    await sharedPreferenceClass.setValue(prefKeyTheme, theme);
    var userTheme = await sharedPreferenceClass.readValue(prefKeyTheme);
    SC.userThemeMode = userTheme == 'light' ? ThemeMode.light : ThemeMode.dark;
  }


  /// Retrieves user data from the local storage.
  ///
  /// Retrieves user data from the local storage and assigns it to the session controller
  /// to be used across the app.
  Future<void> getUserFromPreference() async {
    try {
      var userData = await sharedPreferenceClass.readValue(prefKeyUserModel);
      var isLogin = await sharedPreferenceClass.readValue(prefIsLogin);
      var accessToken = await sharedPreferenceClass.readValue(prefKeyToken);
      var userPin = await sharedPreferenceClass.readValue(prefKeyPin);
      var lang = await sharedPreferenceClass.readValue(prefKeyLang);
      var theme = await sharedPreferenceClass.readValue(prefKeyTheme);
      var propertyResponse =
          await sharedPreferenceClass.readValue(prefKeyProperty);
      var areaResponse = await sharedPreferenceClass.readValue(prefKeyArea);
      var appAndDeviceInfo = await sharedPreferenceClass.readValue(prefKeyDeviceInfo);

      SC.isLogin = isLogin == 'true' ? true : false;
      SC.accessToken = accessToken ?? '';
      SC.userPin = userPin ?? '';
      SC.userLang = lang ?? 'de';
      SC.appAndDeviceInfo = appAndDeviceInfo ?? '';
      SC.userThemeMode = theme == 'light' ? ThemeMode.light : ThemeMode.dark;
      // if (userData != null && userData.isNotEmpty) {
      //   SC.user = UserModel.fromJson(jsonDecode(userData));
      // }else{
      //   SC.user = UserModel();
      // }
      //
      debugPrint('========== User Data ===========');
      debugPrint(SC.user.toString());
      debugPrint('========= User Data End============');
      // if(userData != null && !SessionController.isLogin!){
      //   appLogout();
      //   SessionController.user =  UserModel();
      // }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  clearSelectedProperty() async {
    await sharedPreferenceClass.clearValue(prefKeyProperty);
  }

  clearSelectedArea() async {
    await sharedPreferenceClass.clearValue(prefKeyArea);
  }

  static appLogout() async {
    LocalStorage sharedPrefClass = LocalStorage();
    await sharedPrefClass.clearValue(prefIsLogin);
    await sharedPrefClass.clearValue(prefKeyToken);
    await sharedPrefClass.clearValue(prefKeyPin);
    await sharedPrefClass.clearValue(prefKeyUserModel);
    await sharedPrefClass.clearValue(prefKeyArea);
    await sharedPrefClass.clearValue(prefKeyProperty);


    isLogin = false;
  }
}

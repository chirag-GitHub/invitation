import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quotanic/configs/config.dart';
import 'package:url_launcher/url_launcher.dart';

class AppHelper {

  static String minAppVersion = '1.0.12';

  static launchURL(URLType type, String value) async {
    late Uri redirectUri;
    switch (type) {
      case URLType.https:
        redirectUri = Uri.parse(value);
        break;
      case URLType.tel:
        redirectUri = Uri.parse('tel: $value');
        break;
      case URLType.mailto:
        redirectUri = Uri(
          scheme: 'mailto',
          path: value,
          // query:
          //     'subject=${Constant.appName}&body=${UiUtils.translate(context, "mailMsgLbl")}',
        );
        break;
      case URLType.sms:
        break;
      case URLType.file:
        break;
    }

    if (await canLaunchUrl(redirectUri)) {
      await launchUrl(redirectUri);
    } else {
      debugPrint('Could not launch $redirectUri');
    }
  }

  static Future<String> getDeviceInfo() async {
    var deviceModel = '';
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    switch (Platform.operatingSystem) {
      case 'android':
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        deviceModel = androidInfo.model;
        break;
      case 'ios':
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        deviceModel = iosInfo.utsname.machine;
        break;
      default:
        WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
        deviceModel = webBrowserInfo.userAgent ?? "Unknown";
    }
    debugPrint("deviceModel::: $deviceModel");
    return deviceModel;
  }


  static sendNotificationClickLog(message) async {
    final dio = Dio();
    const url = 'https://webhook.site/0ae360a7-615f-481b-a495-575ca53c99f6'; // or your API
    final data = {
      'message': message,
      'timestamp': DateTime.now().toIso8601String(),
    };

    // try {
    //   final response = await dio.post(
    //     url,
    //     data: data,
    //     options: Options(
    //       headers: {
    //         'Content-Type': 'application/json',
    //         // 'Authorization': 'Bearer YOUR_TOKEN', // if needed
    //       },
    //     ),
    //   );
    //
    //   debugPrint('Success: ${response.statusCode}');
    // } catch (e) {
    //   debugPrint('Error sending data: $e');
    // }
  }

}

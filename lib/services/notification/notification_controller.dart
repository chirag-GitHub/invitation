// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:quotanic/configs/config.dart';
// import 'package:quotanic/data/network/network.dart';
// import 'package:quotanic/features/comments/model/comment_args_model.dart';
// import 'package:quotanic/features/notifications/bloc/notification_bloc.dart';
// import 'package:quotanic/features/notifications/bloc/notification_event.dart';
// import 'package:quotanic/main.dart';
// import 'package:permission_handler/permission_handler.dart'; // Importing Flutter material library
//
// /// A singleton class for managing user session data.
// class NotificationController {
//   Future? _firebaseInit;
//
//   Future? get firebaseInitialization => _firebaseInit;
//
//   NotificationController() {
//     _firebaseInit = _init();
//   }
//
//   static final _setting = InitializationSettings(
//     android: AndroidInitializationSettings('@mipmap/ic_launcher'),
//     iOS: DarwinInitializationSettings(
//       requestAlertPermission: false,
//       requestBadgePermission: false,
//       requestSoundPermission: true,
//       defaultPresentSound: true,
//     ),
//   );
//
//   static final _details = NotificationDetails(
//     android: AndroidNotificationDetails(
//       'immowin24 connects',
//       'immowin24 connects',
//       channelDescription: 'immowin24connects',
//       importance: Importance.max,
//       priority: Priority.max,
//       channelShowBadge: true,
//       fullScreenIntent: true,
//       visibility: NotificationVisibility.private,
//       // autoCancel: true,
//       timeoutAfter: 30000,
//       playSound: true,
//       enableVibration: true,
//       ongoing: true,
//     ),
//     iOS: DarwinNotificationDetails(
//       presentAlert: true,
//       presentSound: true,
//       presentBadge: true,
//     ),
//   );
//
//   _init() async {
//     // AppHelper.sendNotificationClickLog('Init firebase');
//     try {
//       await Firebase.initializeApp();
//       final FirebaseMessaging instance = FirebaseMessaging.instance;
//       PermissionStatus? notificationPermissionStatus =
//           await Permission.notification.request();
//       if (notificationPermissionStatus != PermissionStatus.granted) {
//         await instance.requestPermission();
//       }
//       await instance.setForegroundNotificationPresentationOptions(
//           alert: true, badge: true, sound: true);
//
//       initialMessage = await FirebaseMessaging.instance.getInitialMessage();
//       FirebaseMessaging.onBackgroundMessage(
//           _firebaseMessagingBackgroundHandler);
//       FirebaseMessaging.onMessage.listen(_onForegroundMessage);
//       FirebaseMessaging.onMessageOpenedApp.listen((message) {
//         handleNotification(message, 'onMessageOpenedApp');
//       });
//     } catch (e) {
//       // logger.e('$e');
//     }
//     // logger.i('init end');
//   }
//
//   /// get token from firebase and update to database.
//   static Future<void> saveFirebaseToken() async {
//     try {
//       await Future.delayed(
//         Duration(seconds: 2),
//         () async {
//           if (Platform.isIOS) {
//             String? apnsToken = await FirebaseMessaging.instance.getAPNSToken();
//             debugPrint('APNS Token: $apnsToken');
//             await Future.delayed(Duration(seconds: 2));
//           }
//           await FirebaseMessaging.instance.getToken().then((fcmToken) async {
//             Map<String, dynamic> data = {'token': fcmToken};
//             await DioApiServicesImpl()
//                 .postApi(Endpoints.fcmTokenUpdate, data: data);
//           });
//         },
//       );
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//   }
//
//   Future<void> _onForegroundMessage(RemoteMessage message) async {
//     // AppHelper.sendNotificationClickLog('call :: _onForegroundMessage');
//     navigatorKey.currentContext!
//         .read<NotificationBloc>()
//         .add(NotificationDataFetch());
//     notificationShow(message);
//     if (message.data['type'] == 'CreateTicketNotification' ||
//         message.data['type'] == 'ChangeStatusTicketNotification') {
//       navigatorKey.currentContext!.read<NotificationBloc>().add(
//           OnNotificationRefresh(
//               isTicketRefresh: true, isCommentRefresh: true));
//     } else if (message.data['type'].toString().contains('Comment')) {
//       navigatorKey.currentContext!.read<NotificationBloc>().add(
//           OnNotificationRefresh(
//               isTicketRefresh: false, isCommentRefresh: true));
//     }
//   }
//
//   static notificationShow(RemoteMessage message) async {
//     final notification = FlutterLocalNotificationsPlugin();
//     await notification.initialize(_setting, onDidReceiveNotificationResponse:
//         (NotificationResponse? notificationResponse) {
//       if (notificationResponse == null) return;
//       handleNotification(
//           RemoteMessage.fromMap({
//             "data": json.decode(notificationResponse.payload ?? ''),
//           }),
//           'call :: notificationShow');
//     });
//     if (message.notification != null && !Platform.isIOS) {
//       notification.show(
//         message.notification.hashCode,
//         message.notification!.title,
//         message.notification!.body,
//         _details,
//         payload: json.encode(message.data),
//       );
//     }
//   }
// }
//
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // AppHelper.sendNotificationClickLog(
//   //     'call :: _firebaseMessagingBackgroundHandler');
//   if (message.notification != null) {
//     await Firebase.initializeApp();
//     NotificationController.notificationShow(message);
//   }
// }
//
// Future<void> handleNotification(RemoteMessage message, String fromf) async {
//   // AppHelper.sendNotificationClickLog(
//   //     'call :: handleNotification ${message.data.toString()} - $fromf');
//
//   NotificationBloc(notificationApiRepository: getIt())
//       .add(ReadNotification(notificationId: message.data['id']));
//   navigatorKey.currentState?.pushNamedAndRemoveUntil(
//     RoutesName.dashboardScreen,
//     (route) => false,
//   );
//   if (message.data['type'] == "CreateTicketNotification" ||
//       message.data['type'] == "ChangeStatusTicketNotification") {
//     navigatorKey.currentState?.pushNamed(
//       RoutesName.ticketDetailScreen,
//       arguments: [
//         int.parse(message.data['module_type']),
//         Color(
//             int.parse(message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//         int.parse(message.data['id']),
//       ],
//     );
//   } else if (message.data['type'] == "TicketCommentNotification") {
//     //response from push notification {relation_id: 140, id: 298459, module_type: 0, module_bgcolor: #0B9E85, module_name: Ticket, relation: tickets, type: TicketCommentNotification}
//     navigatorKey.currentState?.pushNamed(
//       RoutesName.commentScreen,
//       arguments: CommentArgsModel(
//           color: Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           typeId: int.parse(message.data['module_type']),
//           title: '#${message.data['relation_id']}',
//           relation: 'tickets',
//           relationId: int.parse(message.data['relation_id']),
//           notificationType: message.data['type']),
//     );
//   } else if (message.data['type'] == "CreateReadingNotification") {
//     Navigator.pushNamed(
//         navigatorKey.currentContext!, RoutesName.readingDetailScreen,
//         arguments: [
//           int.parse(message.data['module_type']),
//           Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           int.parse(message.data['relation_id'])
//         ]);
//   } else if (message.data['type'] == "TenantCommentNotification") {
//     Navigator.pushNamed(
//       navigatorKey.currentContext!,
//       RoutesName.commentScreen,
//       arguments: CommentArgsModel(
//           color: Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           typeId: int.parse(message.data['module_type']),
//           title: 'Meter Comments',
//           relation: 'tenancy_schedule_items_app_tenant',
//           relationId: int.parse(message.data['relation_id']),
//           notificationType: message.data['type']),
//     );
//   } else if (message.data['type'] == "InvoiceCommentNotification") {
//     // InvoiceData invoiceData =
//     //     InvoiceData.fromJson(json.decode(message.data['result']));
//     Navigator.pushNamed(
//       navigatorKey.currentContext!,
//       RoutesName.commentScreen,
//       arguments: CommentArgsModel(
//           color: Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           typeId: int.parse(message.data['module_type']),
//           title: '#${message.data['view_id']}',
//           relation: 'property_invoices',
//           relationId: int.parse(message.data['relation_id']),
//           notificationType: message.data['type']),
//     );
//   } else if (message.data['type'] == "OutgoingInvoiceCommentNotification") {
//     // OutGoingInvoiceData outGoingInvoiceData =
//     //     OutGoingInvoiceData.fromJson(json.decode(message.data['result']));
//     Navigator.pushNamed(
//       navigatorKey.currentContext!,
//       RoutesName.commentScreen,
//       arguments: CommentArgsModel(
//           color: Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           typeId: int.parse(message.data['module_type']),
//           title: '#${message.data['view_id']}',
//           relation: 'outgoing_invoices',
//           relationId: int.parse(message.data['relation_id']),
//           notificationType: message.data['type']),
//     );
//   } else if (message.data['type'] == "ContractCommentNotification") {
//     // ContractData contractData =
//     //     ContractData.fromJson(json.decode(message.data['result']));
//     Navigator.pushNamed(
//       navigatorKey.currentContext!,
//       RoutesName.commentScreen,
//       arguments: CommentArgsModel(
//           color: Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           typeId: int.parse(message.data['module_type']),
//           title: '#${message.data['relation_id']}',
//           relation: 'property_contracts',
//           relationId: int.parse(message.data['relation_id']),
//           notificationType: message.data['type']),
//     );
//   } else if (message.data['type'] == "OfferCommentNotification") {
//     // ContractData contractData =
//     //     ContractData.fromJson(json.decode(message.data['result']));
//     Navigator.pushNamed(
//       navigatorKey.currentContext!,
//       RoutesName.commentScreen,
//       arguments: CommentArgsModel(
//           color: Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           typeId: int.parse(message.data['module_type']),
//           title: '#${message.data['relation_id']}',
//           relation: 'property_insurance_tabs',
//           relationId: int.parse(message.data['relation_id']),
//           notificationType: message.data['type']),
//     );
//   } else if (message.data['type'] == "OfferDetailCommentNotification") {
//     // ContractData contractData =
//     //     ContractData.fromJson(json.decode(message.data['result']));
//     Navigator.pushNamed(
//       navigatorKey.currentContext!,
//       RoutesName.commentScreen,
//       arguments: CommentArgsModel(
//           color: Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           typeId: int.parse(message.data['module_type']),
//           title: '#${message.data['relation_id']}',
//           relation: 'property_insurance_tab_details',
//           relationId: int.parse(message.data['relation_id']),
//           notificationType: message.data['type'],
//           topicId: message.data['parent_id']),
//     );
//   } else if (message.data['type'] == "BkaCommentNotification") {
//     Navigator.pushNamed(
//       navigatorKey.currentContext!,
//       RoutesName.commentScreen,
//       arguments: CommentArgsModel(
//           color: Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           typeId: int.parse(message.data['module_type']),
//           title: '#${message.data['relation_id']}',
//           relation: 'tenant_payments',
//           relationId: int.parse(message.data['relation_id']),
//           notificationType: message.data['type']),
//     );
//   } else if (message.data['type'] == "HausmeisterCommentNotification") {
//     Navigator.pushNamed(
//       navigatorKey.currentContext!,
//       RoutesName.commentScreen,
//       arguments: CommentArgsModel(
//           color: Color(int.parse(
//               message.data['module_bgcolor'].replaceAll('#', '0xff'))),
//           typeId: int.parse(message.data['module_type']),
//           title: '#${message.data['relation_id']}',
//           relation: 'hausmeisters',
//           relationId: int.parse(message.data['relation_id']),
//           notificationType: message.data['type']),
//     );
//   } else if (message.data['type'] == "TenantBroadcastNotification") {
//     Navigator.pushNamed(
//         navigatorKey.currentContext!, RoutesName.broadcastDetailScreen,
//         arguments: [
//           int.parse(message.data['relation_id']),
//         ]);
//   }else if (message.data['type'] == "DailyActivityNotification") {
//     Navigator.pushNamed(
//         navigatorKey.currentContext!, RoutesName.todoScreen);
//   }
// }

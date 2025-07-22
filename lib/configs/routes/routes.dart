import 'package:flutter/material.dart';
import 'package:quotanic/features/dashboard/views/bottom_navigation_bar.dart';
import 'package:quotanic/features/profile/view/edit_profile_view.dart';
import 'package:quotanic/features/settings/view/language_screen.dart';
import 'package:quotanic/features/settings/view/setting_screen.dart';

import '../config.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case RoutesName.loginScreen:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const LoginScreen());
      //
      // case RoutesName.otpScreen:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const OTPScreen());
      //
      // case RoutesName.pinPasswordScreen:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const PinPasswordScreen());
      //
      case RoutesName.dashboardScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                const BottomNavigationBarScreen());

      // case RoutesName.selectValueScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   String title = args[0];
      //   Property? property = args[1];
      //   bool showIsAll = args[2];
      //   Property invoiceSelectedProperty = args[3];
      //
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => SelectValueScreen(
      //             title: title,
      //             property: property,
      //             showIsAll: showIsAll,
      //             invoiceSelectedProperty: invoiceSelectedProperty,
      //           ));
      case RoutesName.settingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => SettingScreen());
      case RoutesName.editProfileScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => EditProfileScreen());
      // case RoutesName.otherProfileScreen:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => OtherProfileView(
      //             userId: settings.arguments.toString(),
      //           ));
      case RoutesName.languageScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => LanguageScreen());
      // case RoutesName.notificationSettingScreen:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => NotificationSettingScreen());
      // case RoutesName.fullImageScreen:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => FullScreenImage(
      //             image: settings.arguments.toString(),
      //           ));
      // case RoutesName.ticketScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int typeId = args[0];
      //   Color color = args[1];
      //
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => TicketScreen(
      //             typeId: typeId,
      //             color: color,
      //           ));
      // case RoutesName.readingScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   String title = args[0];
      //   int typeId = args[1];
      //   Color color = args[2];
      //   int meterId = args[3];
      //   area_model.Area area = args[4];
      //
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ReadingScreen(
      //             title: title,
      //             typeId: typeId,
      //             color: color,
      //             meterId: meterId,
      //             area: area,
      //           ));
      // case RoutesName.readingDetailScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int typeId = args[0];
      //   Color color = args[1];
      //   int readingId = args[2];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ReadingDetailScreen(
      //             typeId: typeId,
      //             color: color,
      //             readingId: readingId,
      //           ));
      // case RoutesName.ticketDetailScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int typeId = args[0];
      //   Color color = args[1];
      //   int id = args[2];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => TicketDetailScreen(
      //             typeId: typeId,
      //             color: color,
      //             id: id,
      //           ));
      // case RoutesName.readingAddScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   String title = args[0];
      //   int typeId = args[1];
      //   Color color = args[2];
      //   area_model.Area area = args[3];
      //
      //   ReadingData? readingData;
      //   if (args.length == 5) {
      //     readingData = args[4];
      //   }
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ReadingAddScreen(
      //             title: title,
      //             typeId: typeId,
      //             color: color,
      //             area: area,
      //             readingData: readingData,
      //           ));
      //
      // case RoutesName.ticketAddScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   Tickets ticketModel = args[0];
      //   Color color = args[1];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => AddTicketScreen(
      //             ticketModel: ticketModel,
      //             color: color,
      //           ));
      //
      // case RoutesName.meterScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   String title = args[0];
      //   int typeId = args[1];
      //   Color color = args[2];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => MeterScreen(
      //             title: title,
      //             typeId: typeId,
      //             color: color,
      //           ));
      //
      // case RoutesName.meterDetailScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int typeId = args[0];
      //   Color color = args[1];
      //   MeterData meterData = args[2];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => MeterDetailScreen(
      //           typeId: typeId, color: color, meterData: meterData));
      // case RoutesName.meterAddScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   String title = args[0];
      //   int typeId = args[1];
      //   Color color = args[2];
      //   MeterData? meterData;
      //   if (args.length == 4) {
      //     meterData = args[3];
      //   }
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => MeterAddScreen(
      //             title: title,
      //             typeId: typeId,
      //             color: color,
      //             meterData: meterData,
      //           ));
      // case RoutesName.searchContactScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   String title = args[0];
      //   int typeId = args[1];
      //   Color color = args[2];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => SearchContactScreen(
      //             title: title,
      //             typeId: typeId,
      //             color: color,
      //           ));
      // case RoutesName.notificationScreen:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => NotificationsScreen());
      // case RoutesName.commentScreen:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => CommentsScreen(
      //           argsModel: settings.arguments as CommentArgsModel));
      //   case RoutesName.tagUserScreen:
      //     List<dynamic> args = settings.arguments as List<dynamic>;
      //     String title = args[0];
      //     // int typeId = args[1];
      //     Color color = args[1];
      //     List<UserData> list = args[2];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => TagUserScreen(
      //         title: title,
      //         // typeId: typeId,
      //         color: color,
      //         userList: list,
      //       ));
      // case RoutesName.invoiceScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   Color color = args[0];
      //   int typeId = args[1];
      //   InvoiceStatusData? statusData = args[2];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => InvoiceScreen(
      //             color: color,
      //             typeId: typeId,
      //             statusData: statusData,
      //           ));
      // case RoutesName.invoiceDetailsScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int id = args[0];
      //   String titleViewId = args[1];
      //   Color color = args[2];
      //   int typeId = args[3];
      //   InvoiceBloc? invoiceBlocOfListScreen = args[4];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => InvoiceDetailsScreen(
      //             invoiceId: id,
      //             titleViewId: titleViewId,
      //             color: color,
      //             typeId: typeId,
      //             invoiceBlocOfListScreen: invoiceBlocOfListScreen,
      //           ));
      //
      // case RoutesName.searchUserScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   String title = args[0];
      //   Color color = args[1];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => SearchUserScreen(
      //             title: title,
      //             color: color,
      //           ));
      // case RoutesName.outGoingInvoiceScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   Color color = args[0];
      //   int typeId = args[1];
      //
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => OutgoingInvoiceScreen(
      //             color: color,
      //             typeId: typeId,
      //           ));
      // case RoutesName.outgoingInvoiceDetailsScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int id = args[0];
      //   String titleViewId = args[1];
      //   Color color = args[2];
      //   int typeId = args[3];
      //   OutGoingInvoiceBloc? outGoingInvoiceBlocListScreen = args[4];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => OutgoingInvoiceDetailsScreen(
      //             invoiceId: id,
      //             titleViewId: titleViewId,
      //             color: color,
      //             typeId: typeId,
      //             outGoingInvoiceBlocListScreen: outGoingInvoiceBlocListScreen,
      //           ));
      // case RoutesName.contractScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   Color color = args[0];
      //   int typeId = args[1];
      //   InvoiceStatusData? statusData = args[2];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ContractScreen(
      //             color: color,
      //             typeId: typeId,
      //             statusData: statusData,
      //           ));
      // case RoutesName.contractDetailsScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int id = args[0];
      //   Color color = args[1];
      //   int typeId = args[2];
      //   ContractBloc? contractBlocListScreen = args[3];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ContractDetailsScreen(
      //             contractId: id,
      //             color: color,
      //             typeId: typeId,
      //             contractBlocListScreen: contractBlocListScreen,
      //           ));
      // case RoutesName.offersScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   Color color = args[0];
      //   int typeId = args[1];
      //   InvoiceStatusData? statusData = args[2];
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => OffersScreen(
      //       color: color,
      //       typeId: typeId,
      //       statusData: statusData,
      //     ),
      //   );
      // case RoutesName.offersDetailsScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int id = args[0];
      //   Color color = args[1];
      //   int typeId = args[2];
      //   int clickedIndex = args[3];
      //   OffersBloc? offersBlocListScreen = args[4];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => OffersDetailsScreen(
      //             topicId: id,
      //             color: color,
      //             typeId: typeId,
      //             clickedIndex: clickedIndex,
      //             offersBlocListScreen: offersBlocListScreen,
      //           ));
      // case RoutesName.caretakerScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   Color color = args[0];
      //   int typeId = args[1];
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => CaretakerScreen(
      //       color: color,
      //       typeId: typeId,
      //     ),
      //   );
      // case RoutesName.reportDetailScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int id = args[0];
      //   Color color = args[1];
      //   int typeId = args[2];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ReportDetailScreen(
      //             reportId: id,
      //             color: color,
      //             typeId: typeId,
      //           ));
      // case RoutesName.addReportScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   String title = args[0];
      //   int typeId = args[1];
      //   Color color = args[2];
      //   ReportDataModel? reportDataModel;
      //   if (args.length == 4) {
      //     reportDataModel = args[3];
      //   }
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => AddReportScreen(
      //             title: title,
      //             typeId: typeId,
      //             color: color,
      //             reportModel: reportDataModel ?? ReportDataModel(),
      //           ));
      // case RoutesName.taskScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   Color color = args[0];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => TaskScreen(
      //             color: color,
      //           ));
      // case RoutesName.bkaScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   Color color = args[0];
      //   int typeId = args[1];
      //   InvoiceStatusData? statusData = args[2];
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => BkaScreen(
      //       color: color,
      //       typeId: typeId,
      //       statusData: statusData,
      //     ),
      //   );
      // case RoutesName.bkaDetailsScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int id = args[0];
      //   Color color = args[1];
      //   int typeId = args[2];
      //   BkaBloc? bkaBlocListScreen = args[3];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => BkaDetailsScreen(
      //             bkaId: id,
      //             // invoiceViewId: viewId,
      //             color: color,
      //             typeId: typeId,
      //             bkaBlocListScreen: bkaBlocListScreen,
      //           ));
      // case RoutesName.jointVentureScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   Color color = args[0];
      //   int typeId = args[1];
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => JointVentureScreen(
      //       color: color,
      //       typeId: typeId,
      //     ),
      //   );
      // case RoutesName.broadcastScreen:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => BroadcastScreen());
      // case RoutesName.broadcastDetailScreen:
      //   List<dynamic> args = settings.arguments as List<dynamic>;
      //   int id = args[0];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => BroadcastDetailsScreen(
      //             broadcastId: id,
      //           ));
      // case RoutesName.todoScreen:
      //   // List<dynamic> args = settings.arguments as List<dynamic>;
      //   // int id = args[0];
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => TodoScreen(
      //           // broadcastId: id,
      //           ));
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}

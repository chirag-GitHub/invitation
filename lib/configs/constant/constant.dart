
const kBorderRadius = 8.0;
final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year - 1, kToday.month, kToday.day);
final kLastDay = DateTime.now();

// final kLastDay = DateTime(kToday.year + 1, kToday.month, kToday.day);

// StreamSubscription connectivitySubscription =
//     Connectivity().onConnectivityChanged.listen((result) {
//   print(result);
//   if (ConnectivityResult.mobile == result[0] ||
//       ConnectivityResult.wifi == result[0]) {
//     Navigator.pop(navigatorKey.currentContext!);
//   } else {
//     Navigator.push(navigatorKey.currentContext!, MaterialPageRoute(builder: (context) => InterNetExceptionWidget(onPress: (){}),));
//   }
// });

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/features/home/bloc/home_bloc.dart';
import 'package:quotanic/features/home/views/widget/home_appbar.dart';
import 'package:quotanic/main.dart';
import 'package:quotanic/configs/config.dart';


/// A widget representing the login screen of the application.
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

/// The state of the [HomeView] widget.
class _HomeViewState extends State<HomeView> {
  late HomeBloc _homeBlocs;

  DateTime? currentBackPressTime;
  bool canPopNow = false;
  int requiredSeconds = 2;

  double appBarHeight = 0.0;
  double bottomNavBarHeight = 0.0; // Default is 56.0
  double statusBarHeight = 0.0;

  double bodyHeight = 0.0;

  @override
  void initState() {
    super.initState();
    _homeBlocs = HomeBloc(homeApiRepository: getIt());

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    appBarHeight = kToolbarHeight;
    bottomNavBarHeight = kBottomNavigationBarHeight; // Default is 56.0
    statusBarHeight = MediaQuery.of(context).padding.top;
    bodyHeight = MediaQuery.of(context).size.height -
        appBarHeight -
        bottomNavBarHeight -
        statusBarHeight -
        statusBarHeight -
        (statusBarHeight <= 20 ? 150 : 135);

    return PopScope(
      canPop: canPopNow,
      onPopInvokedWithResult: onPopInvoked,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(100.w,
                  (MediaQuery.of(context).padding.top + kToolbarHeight + 160)),
              child: HomeAppBar()),
          body: Container()),
    );
  }



  onPopInvoked(didPop, result) {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) >
            Duration(seconds: requiredSeconds)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.current.pressBackAgainToExitApp),
        ),
      );
      // Get.rawSnackbar(message: 'Press back again to exit app');
      Future.delayed(
        Duration(seconds: requiredSeconds),
        () {
          setState(() {
            canPopNow = false;
          });
        },
      );
      setState(() {
        canPopNow = true;
      });
    }
  }


}

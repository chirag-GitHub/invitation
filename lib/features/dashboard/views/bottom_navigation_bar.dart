import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quotanic/features/home/views/home_view.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/profile/view/profile_view.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';


class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  double iconSize = 25;
  PackageInfo? packageInfo;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    HomeView(),
    ProfileView()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.white,
      //   shadowColor: Colors.black.withOpacity(0.3),
      //   surfaceTintColor: Colors.white,
      //   elevation: 10,
      //   title: const Text('GoogleNavBar'),
      // ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).primaryColor,
                blurRadius: 10,
                offset: Offset(0, 4)),
          ],
        ),
        child: SafeArea(
          bottom: true,
          child: GNav(
            tabBorderRadius: 8,
            haptic: true,
            tabActiveBorder:
            Border.all(color: Theme.of(context).primaryColor),
            gap: 8,
            activeColor: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            duration: Duration(milliseconds: 300),
            tabBackgroundColor:
            Theme.of(context).primaryColor.withValues(alpha: 0.2),
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            tabs: [
              GButton(
                icon: Icons.home,
                leading: AssetsHelper.getImage(AssetUrl.icHome,
                    width: iconSize, height: iconSize),
                text: S.current.home,
              ),
              GButton(
                icon: Icons.favorite,
                leading: AssetsHelper.getImage(AssetUrl.icProperties,
                    width: iconSize, height: iconSize),
                text: S.current.properties,
              ),
              GButton(
                icon: Icons.account_circle,
                leading: Container(
                  height: iconSize,
                  width: iconSize,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.yellow,
                          Colors.green,
                        ],
                      )),
                  child: NetworkImageWidget(
                    imageUrl: SC.user.toString(),
                    height: iconSize,
                    width: iconSize,
                    boxFit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(100),
                    iconSize: 25,
                  ),
                ),
                text: S.current.profile,
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

}

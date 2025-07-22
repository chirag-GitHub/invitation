import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/data/network/end_points.dart';
import 'package:quotanic/features/profile/bloc/profile_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_events.dart';

import '../../../../services/session_manager/session_controller.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
        widget(
            text: S.current.profile,
            icons: Icons.person_outline,
            onTap: () async {
              Navigator.pushNamed(context, RoutesName.editProfileScreen);
            },
            context: context),
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
        widget(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.settingScreen);
            },
            text: S.current.setting,
            icons: Icons.settings,
            context: context),
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
        // if (SC.user.data?.roleType == 1)
        //   Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       widget(
        //           onTap: () {
        //             Navigator.pushNamed(context, RoutesName.broadcastScreen);
        //           },
        //           text: S.current.broadcast,
        //           icons: Icons.message_outlined,
        //           context: context),
        //       Divider(
        //         color: Colors.grey.withValues(alpha: 0.2),
        //         height: 1,
        //       ),
        //     ],
        //   ),
        widget(
          onTap: () async {
            await AppHelper.launchURL(
                URLType.https, Endpoints.privacyPolicyURL);
          },
          text: S.current.privacyPolicy,
          icons: Icons.policy_outlined,
          context: context,
          isShowArrow: true,
        ),
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
        widget(
          onTap: () {
            customConfirmDialog(
              context,
              callback: () {
                context.read<ProfileBloc>().add(Logout());
                Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.loginScreen, (route) => false);
              },
              title: S.current.logout,
              content: S.current.logoutContentText,
              buttonPositive: S.current.logout,
              buttonNegative: S.current.noText,
            );
          },
          text: S.current.logout,
          icons: Icons.logout,
          context: context,
          isShowArrow: false,
        ),
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
      ],
    );
  }

  widget(
      {required String text,
      required IconData icons,
      bool isShowArrow = true,
      required Function() onTap,
      context}) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          spacing: 20,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.surface,
              child: Icon(
                icons,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Spacer(),
            isShowArrow
                ? Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Theme.of(context).primaryColor,
                  )
                : SizedBox()
          ],
        ),

        // ListTile(
        //   contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
        //   dense: true,
        //   visualDensity: VisualDensity(vertical: -2),
        //   tileColor: Colors.transparent,
        //   leading: CircleAvatar(
        //     backgroundColor: Theme.of(context).colorScheme.surface,
        //     child: Icon(
        //       icons,
        //       color: Theme.of(context).primaryColor,
        //     ),
        //   ),
        //   title: ,
        //   trailing: ,
        // ),
      ),
    );
  }
}

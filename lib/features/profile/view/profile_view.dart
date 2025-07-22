import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/profile/view/widget/profile_menu_widget.dart';

import '../../../main.dart';
import '../bloc/profile_bloc.dart';
import 'widget/user_profile_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late ProfileBloc _profileBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _profileBloc = ProfileBloc(profileApiRepository: getIt());

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _profileBloc.close();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        title: Text(
          S.current.profile,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            UserProfileWidget(),
            Flexible(child: ProfileMenuWidget()),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Column(
          spacing: 2,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                '${S.current.version} : ${AppHelper.minAppVersion}',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontSize: 11,
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withValues(alpha: 0.6)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.current.fcrImmobilien,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontSize: 13,
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withValues(alpha: 0.6)),
                ),
                SvgPicture.asset(
                  AssetUrl.fcrLogo,
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withValues(alpha: 0.6),
                    BlendMode.srcATop,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

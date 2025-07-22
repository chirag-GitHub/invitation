import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../configs/config.dart';

/// A widget representing the email inputs field.
class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: MediaQuery.of(context).padding.top + kToolbarHeight + 160,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: AppBar(
        // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Theme.of(context).secondaryHeaderColor.withValues(alpha: 0.5)),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text('fake'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/home/bloc/home_bloc.dart';

import '../../../../services/session_manager/session_controller.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeStates>(
      builder: (context, state) {
        return SizedBox(
          height: 230,
          child: Column(spacing: 5, mainAxisSize: MainAxisSize.min, children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.fullImageScreen,
                    arguments: 'SC.user.data!.photo');
              },
              child: Container(
                height: 120,
                width: 120,
                margin: EdgeInsets.only(bottom: 15),
                padding: EdgeInsets.all(2.5),
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
                  imageUrl: 'SC.user.data!.photo',
                  height: 90,
                  width: 90,
                  boxFit: BoxFit.cover,
                  borderRadius: BorderRadius.circular(100),
                  iconSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).colorScheme.surface),
              child: Text(
                'SC.user.data!.roles.first.name',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
            Text('SC.user.data!.name',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Theme.of(context).primaryColor)),
          ]),
        );
      },
    );
  }
}

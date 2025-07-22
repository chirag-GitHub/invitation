import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/profile/bloc/profile_events.dart';
import 'package:quotanic/features/profile/bloc/profile_states.dart';

import '../../../main.dart';
import '../bloc/profile_bloc.dart';

class OtherProfileView extends StatefulWidget {
  OtherProfileView({required this.userId, super.key});

  String userId;

  @override
  State<OtherProfileView> createState() => _OtherProfileViewState();
}

class _OtherProfileViewState extends State<OtherProfileView> {
  late ProfileBloc _profileBloc;

  @override
  void initState() {
    super.initState();
    _profileBloc = ProfileBloc(profileApiRepository: getIt());
    _profileBloc.add(FetchProfile(userId: widget.userId));
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
      body: BlocProvider(
        create: (context) => _profileBloc,
        child: BlocBuilder<ProfileBloc, ProfileStates>(
          // buildWhen: (previous, current) {
          //   return previous.widgetList != current.widgetList ||
          //       previous.isShowSubMenu != current.isShowSubMenu;
          // },
          builder: (context, state) {
            return SizedBox(
              width: 100.w,
              height: 100.h,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RoutesName.fullImageScreen,
                          arguments: 'data.photo');
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
                        imageUrl: 'data!.photo',
                        height: 90,
                        width: 90,
                        boxFit: BoxFit.cover,
                        borderRadius: BorderRadius.circular(100),
                        iconSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Theme.of(context).colorScheme.surface),
                    child: Text(
                      'data.roles.first.name',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  Text('data.name',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text('data.email',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                  Text('data.mobile',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            );
            /*switch (state.userData.status) {
              case Status.loading:
                return Container();
              case Status.error:
                return Container(); // Widget for displaying error state
              case Status.completed:
                UserData? data = state.userData.apiData?.data;
                return SizedBox(
                  width: 100.w,
                  height: 100.h,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RoutesName.fullImageScreen,
                              arguments: data.photo);
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
                            imageUrl: data!.photo,
                            height: 90,
                            width: 90,
                            boxFit: BoxFit.cover,
                            borderRadius: BorderRadius.circular(100),
                            iconSize: 30,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 2, bottom: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Theme.of(context).colorScheme.surface),
                        child: Text(
                          data.roles.first.name,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      Text(data.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineSmall),
                      Text(data.email,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelMedium),
                      Text(data.mobile,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                );
              default:
                return const SizedBox();
            }*/
          },
        ),
      ),
    );
  }
}

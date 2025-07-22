import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/profile/bloc/profile_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_events.dart';
import 'package:quotanic/features/profile/bloc/profile_states.dart';

import '../../../../services/session_manager/session_controller.dart';

class UpdateProfileImgWidget extends StatefulWidget {
  const UpdateProfileImgWidget({super.key});

  @override
  State<UpdateProfileImgWidget> createState() => _UpdateProfileImgWidgetState();
}

class _UpdateProfileImgWidgetState extends State<UpdateProfileImgWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileStates>(
      buildWhen: (previous, current) =>
          previous.profilePickedImg != current.profilePickedImg ||
          previous.isEditProfile != current.isEditProfile,
      builder: (context, state) {
        return Column(
          children: [
            Stack(
              children: [
                Container(
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
                  child: state.profilePickedImg.isNotEmpty && state.profilePickedImg != 'remove'
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.file(
                            File(state.profilePickedImg),
                            fit: BoxFit.cover,
                            height: 90,
                            width: 90,
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            if (!state.isEditProfile) {
                              Navigator.pushNamed(
                                  context, RoutesName.fullImageScreen,
                                  arguments:' SC.user.data!.photo');
                            }
                          },
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
                if (state.isEditProfile)
                  Positioned(
                    bottom: 20,
                    right: 02,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        // PickImage.showImagePickerBottomSheet(
                        //   isOpenGallery: true,
                        //   isShowPickOptions: true,
                        //   imgLength: 1,
                        //   context: context,
                        //   onImagePicked: (imagePath) async {
                        //     if (imagePath.isNotEmpty) {
                        //       context.read<ProfileBloc>().add(UpdateProfileImg(
                        //           profilePickedImg: imagePath.first));
                        //       // pickedImage = imagePath.first;
                        //     }
                        //   },
                        // );
                      },
                      child: CircleAvatar(
                        maxRadius: 17,
                        backgroundColor: Theme.of(context)
                            .disabledColor
                            .withValues(alpha: 0.8),
                        child: Icon(
                          Icons.edit,
                          color: Theme.of(context).dialogBackgroundColor,
                        ),
                      ),
                    ),
                  )
              ],
            ),
            // Visibility(
            //   visible: SC.user.data != null &&
            //       state.isEditProfile &&
            //       !SC.user.data!.isDefaultPhoto,
            //   child: GestureDetector(
            //     onTap: () {
            //       context
            //           .read<ProfileBloc>()
            //           .add(UpdateProfileImg(profilePickedImg: 'remove'));
            //     },
            //     child: Container(
            //       padding:
            //           EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(5),
            //           color: Theme.of(context).colorScheme.surface),
            //       child: Text(
            //         state.isEditProfile
            //             ? S.current.removeImage
            //             : SC.user.data!.roles.first.name,
            //         style: Theme.of(context)
            //             .textTheme
            //             .bodySmall!
            //             .copyWith(color: Theme.of(context).primaryColor),
            //       ),
            //     ),
            //   ),
            // ),
            // Visibility(
            //   visible: !state.isEditProfile,
            //   child: Container(
            //     padding:
            //         EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(5),
            //         color: Theme.of(context).colorScheme.surface),
            //     child: Text(
            //       SC.user.data!.roles.first.name,
            //       style: Theme.of(context)
            //           .textTheme
            //           .bodySmall!
            //           .copyWith(color: Theme.of(context).primaryColor),
            //     ),
            //   ),
            // ),
          ],
        );
      },
    );
  }
}

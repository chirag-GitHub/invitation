import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/profile/bloc/profile_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_states.dart';
import 'package:quotanic/features/profile/view/widget/contact_number_input_widget.dart';
import 'package:quotanic/features/profile/view/widget/email_input_widget.dart';
import 'package:quotanic/features/profile/view/widget/full_name_input_widget.dart';
import 'package:quotanic/features/profile/view/widget/submit_button_widget.dart';

import '../../../main.dart';
import '../../../services/session_manager/session_controller.dart';
import '../bloc/profile_events.dart';
import 'widget/update_profile_img_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late ProfileBloc _profileBloc;

  final _formKey = GlobalKey<FormState>();
  final _fullNameFocusNode = FocusNode();
  final _contactNoFocusNode = FocusNode();
  final TextEditingController _fullNameTextEditCnt = TextEditingController();
  final TextEditingController _contactNoTextEditCnt = TextEditingController();
  final TextEditingController _emailTextEditCnt = TextEditingController();

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
    _fullNameFocusNode.dispose();
    _emailTextEditCnt.dispose();
    _contactNoFocusNode.dispose();
    // _profileBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (_) => _profileBloc,
      child: BlocBuilder<ProfileBloc, ProfileStates>(
        buildWhen: (previous, current) =>
            previous.isEditProfile != current.isEditProfile,
        builder: (context, state) {
          return Scaffold(
            body: CustomScrollView(
              physics: ClampingScrollPhysics(),
              clipBehavior: Clip.antiAlias,
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  surfaceTintColor: Theme.of(context).colorScheme.surface,
                  titleSpacing: 0,
                  elevation: 10,
                  title: Text(
                    state.isEditProfile
                        ? S.current.editProfile
                        : S.current.profile,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        // if (_profileBloc.state.isEditProfile == true) {
                        //   _fullNameTextEditCnt.text = SC.user.data!.name;
                        //   _contactNoTextEditCnt.text = SC.user.data!.mobile;
                        // }
                        context.read<ProfileBloc>().add(
                              IsProfileEditable(
                                isEditProfile: _profileBloc.state.isEditProfile,
                              ),
                            );
                        context
                            .read<ProfileBloc>()
                            .add(UpdateProfileImg(profilePickedImg: ''));
                      },
                      icon:
                          Icon(state.isEditProfile ? Icons.close : Icons.edit),
                    )
                  ],
                ),
                SliverToBoxAdapter(
                  child: Column(
                    spacing: 30,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.h),
                      UpdateProfileImgWidget(),
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 15,
                            children: [
                              FullNameInput(
                                  focusNode: _fullNameFocusNode,
                                  fullNameController: _fullNameTextEditCnt),
                              ContactNumberInput(
                                  focusNode: _contactNoFocusNode,
                                  contactController: _contactNoTextEditCnt),
                              EmailInput(
                                  focusNode: FocusNode(),
                                  emailController: _emailTextEditCnt),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: state.isEditProfile
                ? SafeArea(
                    child: SubmitButton(
                      formKey: _formKey,
                    ),
                  )
                : SizedBox(),
          );
        },
      ),
    );
  }
}

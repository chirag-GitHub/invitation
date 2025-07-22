import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_events.dart';
import 'package:quotanic/features/profile/bloc/profile_states.dart';

import '../../../../configs/config.dart';
import '../../../../services/session_manager/session_controller.dart';

/// A widget representing the email inputs field.
class FullNameInput extends StatefulWidget {
  const FullNameInput(
      {super.key, required this.focusNode, required this.fullNameController});

  final FocusNode focusNode;
  final TextEditingController fullNameController;

  @override
  State<FullNameInput> createState() => _FullNameInputState();
}

class _FullNameInputState extends State<FullNameInput> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // if (SC.user.data != null) {
    //   widget.fullNameController.text = SC.user.data!.name;
    //   context
    //       .read<ProfileBloc>()
    //       .add(FullNameChanged(fullName: SC.user.data!.name));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileStates>(
      buildWhen: (previous, current) =>
          previous.isEditProfile != current.isEditProfile,
      builder: (context, state) {

        return InputTextField(
          readOnly: !state.isEditProfile,
          isBorderEnable: state.isEditProfile,
          controller: widget.fullNameController,
          labelText: S.of(context).fullName,
          autofocus: false,
          myFocusNode: widget.focusNode,
          keyboardType: TextInputType.name,
          validation: (value) =>
              ValidationHelper.checkBlankValidation(context, value),
          onChanged: (value) {
            // Dispatching EmailChanged event when email inputs changes
            context.read<ProfileBloc>().add(FullNameChanged(fullName: value));
          },
          checkOfErrorOnFocusChange: true,
          prefixIcon: !state.isEditProfile
              ? null
              : Icon(
                  Icons.person_outline,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
        );
      },
    );
  }
}

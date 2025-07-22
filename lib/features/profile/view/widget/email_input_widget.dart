import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_states.dart';

import '../../../../configs/config.dart';
import '../../../../services/session_manager/session_controller.dart';

/// A widget representing the email inputs field.
class EmailInput extends StatefulWidget {
  const EmailInput(
      {super.key, required this.focusNode, required this.emailController});

  final FocusNode focusNode;
  final TextEditingController emailController;

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // if (SC.user.data != null) {
    //   widget.emailController.text = SC.user.data!.email;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileStates>(
      buildWhen: (previous, current) =>
          previous.isEditProfile != current.isEditProfile,
      builder: (context, state) {
        return InputTextField(
          readOnly: true,
          isBorderEnable: false,
          controller: widget.emailController,
          labelText: S.of(context).email,
          autofocus: false,
          autofillHints: [AutofillHints.email],
          myFocusNode: widget.focusNode,
          keyboardType: TextInputType.phone,
          validation: (value) => null,
          onChanged: (value) {
            // Dispatching EmailChanged event when email inputs changes
          },
          checkOfErrorOnFocusChange: true,
          prefixIcon: !state.isEditProfile
              ? null
              : Icon(
                  Icons.email_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
        );
      },
    );
  }
}

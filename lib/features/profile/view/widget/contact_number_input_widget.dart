import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_events.dart';
import 'package:quotanic/features/profile/bloc/profile_states.dart';
import '../../../../configs/config.dart';
import '../../../../services/session_manager/session_controller.dart';

/// A widget representing the email inputs field.
class ContactNumberInput extends StatefulWidget {
  const ContactNumberInput(
      {super.key, required this.focusNode, required this.contactController});

  final FocusNode focusNode;
  final TextEditingController contactController;

  @override
  State<ContactNumberInput> createState() => _ContactNumberInputState();
}

class _ContactNumberInputState extends State<ContactNumberInput> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // if (SC.user.data != null) {
    //   widget.contactController.text = SC.user.data!.mobile;
    //   context
    //       .read<ProfileBloc>()
    //       .add(ContactNumberChanged(contactNumber: SC.user.data!.mobile));
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
          controller: widget.contactController,
          labelText: S.of(context).contactNumber,
          autofocus: false,
          myFocusNode: widget.focusNode,
          keyboardType: TextInputType.phone,
          validation: (value){},
          // validation: (value) =>
          //     ValidationHelper.checkMobileNoValidation(context, value),
          onChanged: (value) {
            // Dispatching EmailChanged event when email inputs changes
            context
                .read<ProfileBloc>()
                .add(ContactNumberChanged(contactNumber: value));
          },
          checkOfErrorOnFocusChange: true,
          prefixIcon: !state.isEditProfile
              ? null
              : Icon(
                  Icons.phone_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/home/bloc/home_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_bloc.dart';
import 'package:quotanic/features/profile/bloc/profile_events.dart';
import 'package:quotanic/features/profile/bloc/profile_states.dart';

/// A widget representing the submit button for the login form.
class SubmitButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const SubmitButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileStates>(
      listenWhen: (current, previous) =>
          current.postApiStatus != previous.postApiStatus,
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.error) {
          context.flushBarErrorMessage(message: state.message.toString());
        }
        if (state.postApiStatus == PostApiStatus.success) {
          context.read<ProfileBloc>().add(
                IsProfileEditable(
                  isEditProfile: state.isEditProfile,
                ),
              );
          // Navigator.pop(context);
        }
      },
      child: BlocConsumer<ProfileBloc, ProfileStates>(
          buildWhen: (current, previous) =>
              current.postApiStatus != previous.postApiStatus,
          listener: (context, state) {
            if (state.postApiStatus == PostApiStatus.success) {
              // context.read<HomeBloc>().add(HomeProfileUpdate());
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: state.postApiStatus == PostApiStatus.loading
                    ? LoaderWidget()
                    : ButtonView(
                        text: S.current.update,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.read<ProfileBloc>().add(UpdateProfileApi());
                          }
                        },
                      ),
              ),
            );
          }),
    );
  }
}

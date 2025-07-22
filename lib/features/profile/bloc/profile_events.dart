import 'package:equatable/equatable.dart';

abstract class ProfileEvents extends Equatable {
  const ProfileEvents();

  @override
  List<Object> get props => [];
}

class UpdateProfileImg extends ProfileEvents {
  const UpdateProfileImg({required this.profilePickedImg});

  final String profilePickedImg;

  @override
  List<Object> get props => [profilePickedImg];
}

class FullNameChanged extends ProfileEvents {
  const FullNameChanged({required this.fullName});

  final String fullName;

  @override
  List<Object> get props => [fullName];
}

class ContactNumberChanged extends ProfileEvents {
  const ContactNumberChanged({required this.contactNumber});

  final String contactNumber;

  @override
  List<Object> get props => [contactNumber];
}

class IsProfileEditable extends ProfileEvents {
  const IsProfileEditable({required this.isEditProfile});

  final bool isEditProfile;

  @override
  List<Object> get props => [isEditProfile];
}

class UpdateProfileApi extends ProfileEvents {}

class Logout extends ProfileEvents {}

class FetchProfile extends ProfileEvents {
  const FetchProfile({required this.userId});

  final String userId;

  @override
  List<Object> get props => [userId];
}


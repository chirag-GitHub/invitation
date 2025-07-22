import 'package:equatable/equatable.dart';
import 'package:quotanic/data/response/api_response.dart';

import '../../../configs/config.dart';

class ProfileStates extends Equatable {
  const ProfileStates({
    this.profilePickedImg = '',
    this.fullName = '',
    this.contactNumber = '',
    this.message = '',
    this.isEditProfile = false,
    this.postApiStatus = PostApiStatus.initial,
    // required this.userData
  });

  final String profilePickedImg;
  final String fullName;
  final String contactNumber;
  final String message;
  final bool isEditProfile;
  final PostApiStatus postApiStatus;
  // final ApiResponse<UserModel> userData;

  ProfileStates copyWith({
    String? profilePickedImg,
    String? fullName,
    String? contactNumber,
    String? message,
    bool? isEditProfile,
    PostApiStatus? postApiStatus,
    // ApiResponse<UserModel>? userData,
  }) {
    return ProfileStates(
      profilePickedImg: profilePickedImg ?? this.profilePickedImg,
      fullName: fullName ?? this.fullName,
      contactNumber: contactNumber ?? this.contactNumber,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      message: message ?? this.message,
      isEditProfile: isEditProfile ?? this.isEditProfile,
      // userData: userData ?? this.userData,
    );
  }

  @override
  List<Object?> get props =>
      [profilePickedImg, fullName, contactNumber, postApiStatus, isEditProfile];
}

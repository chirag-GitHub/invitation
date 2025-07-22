import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/data/response/api_response.dart';
import 'package:quotanic/features/profile/bloc/profile_events.dart';
import 'package:quotanic/features/profile/bloc/profile_states.dart';
import 'package:quotanic/features/profile/repository/profile_api_repository.dart';

import '../../../configs/config.dart';
import '../../../services/session_manager/session_controller.dart';

class ProfileBloc extends Bloc<ProfileEvents, ProfileStates> {
  ProfileApiRepository profileApiRepository;

  ProfileBloc({required this.profileApiRepository})
      : super(ProfileStates()) {
    on<UpdateProfileImg>(_onUpdateProfileImg);
    on<FullNameChanged>(_onChangeFullName);
    on<ContactNumberChanged>(_onChangeContactNumber);
    on<UpdateProfileApi>(_onProfileUpdate);
    on<IsProfileEditable>(_isProfileEditable);
    on<Logout>(_onLogout);
    on<FetchProfile>(_getProfile);
  }

  Future<void> _onUpdateProfileImg(UpdateProfileImg event,
      Emitter<ProfileStates> emit) async {
    if (event.profilePickedImg == "remove") {
      // emit(state.copyWith(postApiStatus: PostApiStatus.loading));
      // await profileApiRepository.removeImageApi().then((value) async {
      //   if (value.data != null) {
      //     await SC().saveUserInPreference(value);
      //     await SC().getUserFromPreference();
      //   }
      // },);
      // emit(state.copyWith(postApiStatus: PostApiStatus.success));
      // emit(
      //   state.copyWith(profilePickedImg: 'remove'),
      // );
    } else {
      emit(
        state.copyWith(profilePickedImg: event.profilePickedImg),
      );
    }
  }

  void _onChangeFullName(FullNameChanged event, Emitter<ProfileStates> emit) {
    emit(
      state.copyWith(fullName: event.fullName),
    );
  }

  void _isProfileEditable(IsProfileEditable event,
      Emitter<ProfileStates> emit) {
    if (event.isEditProfile) {
      emit(state.copyWith(isEditProfile: false));
    } else {
      emit(state.copyWith(isEditProfile: true));
    }
  }

  void _onChangeContactNumber(ContactNumberChanged event,
      Emitter<ProfileStates> emit) {
    emit(
      state.copyWith(contactNumber: event.contactNumber),
    );
  }

  Future<void> _onProfileUpdate(UpdateProfileApi event,
      Emitter<ProfileStates> emit) async {
    FormData formData = FormData.fromMap({
      "name": state.fullName,
      "mobile": state.contactNumber,
      if (state.profilePickedImg.isNotEmpty)
        'photo': await MultipartFile.fromFile(
          state.profilePickedImg,
          filename: "image.jpg",
          contentType: DioMediaType('image', 'png'),
        ),
    });
    // emit(state.copyWith(postApiStatus: PostApiStatus.loading));
    // await profileApiRepository.updateProfileApi(formData).then((value) async {
    //   if (value.data == null) {
    //     emit(state.copyWith(
    //         postApiStatus: PostApiStatus.error, message: value.accessToken));
    //   } else {
    //     await SC().saveUserInPreference(value);
    //     await SC().getUserFromPreference();
    //     emit(state.copyWith(postApiStatus: PostApiStatus.success));
    //   }
    // }).onError((error, stackTrace) {
    //   emit(state.copyWith(
    //       postApiStatus: PostApiStatus.error, message: error.toString()));
    // });
  }

  _onLogout(Logout event, Emitter<ProfileStates> emit) async {
    var device = await AppHelper.getDeviceInfo();
    Map<String, dynamic> data = {
      'token': SC.accessToken,
      'device_id': device,
    };

    // emit(state.copyWith(postApiStatus: PostApiStatus.loading));
    // await SC.appLogout();
    // await profileApiRepository.logoutApi(data).then((value) async {
    //   if (value.data != null) {
    //     await SC().getUserFromPreference();
    //     emit(state.copyWith(postApiStatus: PostApiStatus.success));
    //   }
    // }).onError((error, stackTrace) {
    //   emit(state.copyWith(
    //       postApiStatus: PostApiStatus.error, message: error.toString()));
    // });
  }

  _getProfile(FetchProfile event, Emitter<ProfileStates> emit) async {
    // emit(state.copyWith(userData: ApiResponse.loading()));
    // await profileApiRepository.getProfileApi({'id': event.userId}).then((
    //     value) async {
    //   emit(state.copyWith(userData: ApiResponse.completed(value)));
    // },).onError((error, stackTrace) {
    //   emit(state.copyWith(userData: ApiResponse.error(error.toString())));
    // },);
  }



}

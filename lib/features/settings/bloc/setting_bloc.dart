import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:quotanic/data/response/api_response.dart';
import 'package:quotanic/features/settings/model/notification_setting_model.dart';
import 'package:quotanic/features/settings/repository/setting_api_repository.dart';
import 'package:quotanic/features/settings/repository/setting_api_repository_impl.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

part 'setting_events.dart';
part 'setting_states.dart';

class SettingBloc extends Bloc<SettingEvents, SettingStates> {
  late SettingApiRepository settingApiRepository;

  SettingBloc()
      : super(SettingStates(
            themeMode: ThemeMode.dark,
            langCode: 'de',
            notification: false,
            notificationModel: ApiResponse.loading())) {
    on<SetInitialTheme>(initiateTheme);
    on<ChangeTheme>(changeTheme);
    on<SetInitialLange>(initiateLang);
    on<ChangeLang>(changeLang);
    on<ChangeNotification>(changeNotification);
    on<FetchNotificationSetting>(getNotificationSetting);
  }

  Future<void> initiateTheme(
      SetInitialTheme event, Emitter<SettingStates> emit) async {
    emit(state.copyWith(themeMode: SC.userThemeMode!));
  }

  Future<void> changeTheme(
      ChangeTheme event, Emitter<SettingStates> emit) async {
    await SC().saveUserThemeInPreference(
        SC.userThemeMode == ThemeMode.light ? 'dark' : 'light');

    emit(state.copyWith(themeMode: SC.userThemeMode!));
  }

  Future<void> initiateLang(
      SetInitialLange event, Emitter<SettingStates> emit) async {
    emit(state.copyWith(langCode: SC.userLang!));
  }

  Future<void> changeLang(ChangeLang event, Emitter<SettingStates> emit) async {
    await SC().saveUserLangInPreference(event.lang);
    emit(state.copyWith(langCode: SC.userLang));
  }

  Future<void> getNotificationSetting(
      FetchNotificationSetting event, Emitter<SettingStates> emit) async {
    emit(state.copyWith(notificationModel: ApiResponse.loading()));
    await SettingApiRepositoryImpl()
        .getNotificationSettingApi()
        .then((value) async {
      emit(state.copyWith(notification: value.notificationData.isNotification));
      emit(state.copyWith(notificationModel: ApiResponse.completed(value)));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
          notificationModel: ApiResponse.error(error.toString())));
    });
  }

  Future<void> changeNotification(
      ChangeNotification event, Emitter<SettingStates> emit) async {
    List<List<NotificationSetting>> updateList = state
        .notificationModel.apiData!.notificationData.notificationSettingList
        .map((e) {
      return e.map(
        (e1) {
         if(e1.id.toString() ==  event.id){
         }
          return e1.id.toString() == event.id
              ? e1.copyWith(isEnable: event.isEnable == '1' ? true : false)
              : e1;
        },
      ).toList();
    }).toList();

    NotificationSettingModel updatedData = state.notificationModel.apiData!
        .copyWith(
            notificationData:
                NotificationData(notificationSettingList: updateList));
    emit(state.copyWith(notificationModel: ApiResponse.completed(updatedData)));

    Map<String, String> data = {
      'is_all': event.isAll,
      'id': event.id,
      'is_enable': event.isEnable,
    };
    if (event.isAll == '1' && event.id == "0") {
      emit(state.copyWith(notification: event.isEnable == '1'));
    }
    await SettingApiRepositoryImpl()
        .changeNotificationSettingApi(data)
        .then((value) async {
      emit(state.copyWith(notificationModel: ApiResponse.completed(value)));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
          notificationModel: ApiResponse.error(error.toString())));
    });
  }
}

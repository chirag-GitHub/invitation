import 'package:flutter/cupertino.dart';
import 'package:quotanic/configs/regex/regex.dart';
import 'package:quotanic/main.dart';
import 'package:quotanic/configs/config.dart';

class ValidationHelper {
  static checkEmailValidation(BuildContext context, String value) {
    if (value.trim().isEmpty) {
      return S.of(context).emailValidation;
    } else if (value.trim().isNotEmpty && !Regex.email.hasMatch(value.trim())) {
      return S.of(context).emailValidValidation;
    } else {
      //Please enter a valid email address
      return null;
    }
  }

  static checkMobileNoValidation(BuildContext context, String value) {
    if (value.isEmpty) {
      return 'mobNoValidation';
    } else if (value.length < 7 || value.length > 15) {
      return 'mobNoValidValidation';
    } else {
      return null;
    }
  }

  static checkBlankValidation(BuildContext context, String value) {
    if (value.isEmpty) {
      return 'validation.canNotEmpty';
    } else {
      return null;
    }
  }

  static checkPasswordValidation(BuildContext context, String value) {
    if (value.isEmpty) {
      return 'validation.passwordValidation';
    } else if (value.toString().trim().length < 6) {
      return 'validation.passwordMinimumValidation';
    } else {
      return null;
    }
  }

  static checkConfirmPasswordValidation(
      BuildContext context, String value, String passwordMatch) {
    if (value.isEmpty) {
      return 'validation.passwordValidation';
    } else if (value.isNotEmpty && value != passwordMatch) {
      return 'validation.retypeNewPasswordMatchValidation';
    } else {
      return null;
    }
  }

  static otpValidator(String? value) {
    if (value == null || value.isEmpty) {
      return S.of(navigatorKey.currentState!.context).enterOTP;
    }
    if (value.length < 4 || value.length > 4) {
      return S.of(navigatorKey.currentState!.context).mustBe4character;
    }
    if (value.isNotEmpty && !Regex.onlyDigits.hasMatch(value.trim())) {
      return S.of(navigatorKey.currentState!.context).enterValidOTP;
    }
    return null;
  }

/*
  *
  *  static checkBlankValidation() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Field can't be empty"),
    ]);
  }

  static checkEmailValidation() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Field can't be empty"),
      FormBuilderValidators.email(errorText: "Enter valid email"),
    ]);
  }

  static checkPasswordValidation() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "emailValidation"),
      FormBuilderValidators.email(errorText: "emailValidation1"),
    ]);
  }

  static checkConfirmPasswordValidation() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "emailValidation"),
      FormBuilderValidators.email(errorText: "emailValidation1"),
    ]);
  }*/
}

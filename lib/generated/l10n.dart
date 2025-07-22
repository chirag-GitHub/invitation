// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Email Address`
  String get email {
    return Intl.message(
      'Email Address',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `No Data Found`
  String get noDataFound {
    return Intl.message(
      'No Data Found',
      name: 'noDataFound',
      desc: '',
      args: [],
    );
  }

  /// `Resource not found`
  String get resourceNotFound {
    return Intl.message(
      'Resource not found',
      name: 'resourceNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Something Went Wrong`
  String get somethingWentWrong {
    return Intl.message(
      'Something Went Wrong',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification`
  String get otpVerification {
    return Intl.message(
      'OTP Verification',
      name: 'otpVerification',
      desc: '',
      args: [],
    );
  }

  /// `Don’t receive the OTP? `
  String get doNotReceiveOtp {
    return Intl.message(
      'Don’t receive the OTP? ',
      name: 'doNotReceiveOtp',
      desc: '',
      args: [],
    );
  }

  /// `OTP sent to `
  String get otpSentTo {
    return Intl.message(
      'OTP sent to ',
      name: 'otpSentTo',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP`
  String get resendOtp {
    return Intl.message(
      'Resend OTP',
      name: 'resendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Enter OTP`
  String get enterOTP {
    return Intl.message(
      'Enter OTP',
      name: 'enterOTP',
      desc: '',
      args: [],
    );
  }

  /// `Enter Valid OTP`
  String get enterValidOTP {
    return Intl.message(
      'Enter Valid OTP',
      name: 'enterValidOTP',
      desc: '',
      args: [],
    );
  }

  /// `Must be 4 character`
  String get mustBe4character {
    return Intl.message(
      'Must be 4 character',
      name: 'mustBe4character',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been verified successfully`
  String get verifiedSuccessfully {
    return Intl.message(
      'Your account has been verified successfully',
      name: 'verifiedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome_back {
    return Intl.message(
      'Welcome',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Set Your PIN`
  String get setYourPIN {
    return Intl.message(
      'Set Your PIN',
      name: 'setYourPIN',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your PIN`
  String get enterPin {
    return Intl.message(
      'Enter Your PIN',
      name: 'enterPin',
      desc: '',
      args: [],
    );
  }

  /// `Enter Confirm PIN`
  String get enterConfirmPin {
    return Intl.message(
      'Enter Confirm PIN',
      name: 'enterConfirmPin',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect PIN. Try again`
  String get invalidPin {
    return Intl.message(
      'Incorrect PIN. Try again',
      name: 'invalidPin',
      desc: '',
      args: [],
    );
  }

  /// `PIN Does Not Matched`
  String get pinNoMatch {
    return Intl.message(
      'PIN Does Not Matched',
      name: 'pinNoMatch',
      desc: '',
      args: [],
    );
  }

  /// `Did you forgot PIN?`
  String get forgotPin {
    return Intl.message(
      'Did you forgot PIN?',
      name: 'forgotPin',
      desc: '',
      args: [],
    );
  }

  /// `Log in to your account`
  String get to_account {
    return Intl.message(
      'Log in to your account',
      name: 'to_account',
      desc: '',
      args: [],
    );
  }

  /// `Field can't be empty`
  String get canNotEmpty {
    return Intl.message(
      'Field can\'t be empty',
      name: 'canNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Contact Number`
  String get contactNumber {
    return Intl.message(
      'Contact Number',
      name: 'contactNumber',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Properties`
  String get properties {
    return Intl.message(
      'Properties',
      name: 'properties',
      desc: '',
      args: [],
    );
  }

  /// `AM`
  String get amText {
    return Intl.message(
      'AM',
      name: 'amText',
      desc: '',
      args: [],
    );
  }

  /// `Property Category`
  String get propertyCategory {
    return Intl.message(
      'Property Category',
      name: 'propertyCategory',
      desc: '',
      args: [],
    );
  }

  /// `Property type`
  String get propertyType {
    return Intl.message(
      'Property type',
      name: 'propertyType',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout?`
  String get logoutContentText {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'logoutContentText',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get noText {
    return Intl.message(
      'No',
      name: 'noText',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yesText {
    return Intl.message(
      'Yes',
      name: 'yesText',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Reading`
  String get reading {
    return Intl.message(
      'Reading',
      name: 'reading',
      desc: '',
      args: [],
    );
  }

  /// `Select Property`
  String get selectProperty {
    return Intl.message(
      'Select Property',
      name: 'selectProperty',
      desc: '',
      args: [],
    );
  }

  /// `Select Area`
  String get selectArea {
    return Intl.message(
      'Select Area',
      name: 'selectArea',
      desc: '',
      args: [],
    );
  }

  /// `Meter Number`
  String get meterNumber {
    return Intl.message(
      'Meter Number',
      name: 'meterNumber',
      desc: '',
      args: [],
    );
  }

  /// `Utility Provider`
  String get utilityProvider {
    return Intl.message(
      'Utility Provider',
      name: 'utilityProvider',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Contract Number`
  String get contractNumber {
    return Intl.message(
      'Contract Number',
      name: 'contractNumber',
      desc: '',
      args: [],
    );
  }

  /// `Search Contact`
  String get searchContact {
    return Intl.message(
      'Search Contact',
      name: 'searchContact',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Meter Reading`
  String get meterReading {
    return Intl.message(
      'Meter Reading',
      name: 'meterReading',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Select reading date`
  String get selectReadingDate {
    return Intl.message(
      'Select reading date',
      name: 'selectReadingDate',
      desc: '',
      args: [],
    );
  }

  /// `Periodic Invoice Date`
  String get periodicInvoiceDate {
    return Intl.message(
      'Periodic Invoice Date',
      name: 'periodicInvoiceDate',
      desc: '',
      args: [],
    );
  }

  /// `Enter description`
  String get enterDescription {
    return Intl.message(
      'Enter description',
      name: 'enterDescription',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get newText {
    return Intl.message(
      'New',
      name: 'newText',
      desc: '',
      args: [],
    );
  }

  /// `In-Progress`
  String get inProgress {
    return Intl.message(
      'In-Progress',
      name: 'inProgress',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Enter title here`
  String get enterTitleHere {
    return Intl.message(
      'Enter title here',
      name: 'enterTitleHere',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Title`
  String get pleaseEnterTitle {
    return Intl.message(
      'Please Enter Title',
      name: 'pleaseEnterTitle',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `Select Image From`
  String get selectImageFrom {
    return Intl.message(
      'Select Image From',
      name: 'selectImageFrom',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Edit Ticket`
  String get editTicket {
    return Intl.message(
      'Edit Ticket',
      name: 'editTicket',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a email address`
  String get emailValidation {
    return Intl.message(
      'Please enter a email address',
      name: 'emailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get emailValidValidation {
    return Intl.message(
      'Please enter a valid email address',
      name: 'emailValidValidation',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Submitting...`
  String get submitting {
    return Intl.message(
      'Submitting...',
      name: 'submitting',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests, please wait for a while and try again`
  String get toManyAttempt {
    return Intl.message(
      'Too many requests, please wait for a while and try again',
      name: 'toManyAttempt',
      desc: '',
      args: [],
    );
  }

  /// `Session Expired, Please login again`
  String get sessionExpired {
    return Intl.message(
      'Session Expired, Please login again',
      name: 'sessionExpired',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get noInternetConnection {
    return Intl.message(
      'No Internet Connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `FCR Immobilien`
  String get fcrImmobilien {
    return Intl.message(
      'FCR Immobilien',
      name: 'fcrImmobilien',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `PLZ`
  String get plzText {
    return Intl.message(
      'PLZ',
      name: 'plzText',
      desc: '',
      args: [],
    );
  }

  /// `Meter`
  String get meter {
    return Intl.message(
      'Meter',
      name: 'meter',
      desc: '',
      args: [],
    );
  }

  /// `Loading More...`
  String get loadingMore {
    return Intl.message(
      'Loading More...',
      name: 'loadingMore',
      desc: '',
      args: [],
    );
  }

  /// `Please select property first`
  String get pleaseSelectPropertyFirst {
    return Intl.message(
      'Please select property first',
      name: 'pleaseSelectPropertyFirst',
      desc: '',
      args: [],
    );
  }

  /// `Area`
  String get area {
    return Intl.message(
      'Area',
      name: 'area',
      desc: '',
      args: [],
    );
  }

  /// `Property`
  String get property {
    return Intl.message(
      'Property',
      name: 'property',
      desc: '',
      args: [],
    );
  }

  /// `Search here...`
  String get searchHere {
    return Intl.message(
      'Search here...',
      name: 'searchHere',
      desc: '',
      args: [],
    );
  }

  /// `Meter updated successfully`
  String get meterUpdatedSuccessfully {
    return Intl.message(
      'Meter updated successfully',
      name: 'meterUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Meter added successfully`
  String get meterAddedSuccessfully {
    return Intl.message(
      'Meter added successfully',
      name: 'meterAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Enter meter number`
  String get enterMeterNumber {
    return Intl.message(
      'Enter meter number',
      name: 'enterMeterNumber',
      desc: '',
      args: [],
    );
  }

  /// `Select utility provider`
  String get selectUtilityProvider {
    return Intl.message(
      'Select utility provider',
      name: 'selectUtilityProvider',
      desc: '',
      args: [],
    );
  }

  /// `Select Contact`
  String get selectContact {
    return Intl.message(
      'Select Contact',
      name: 'selectContact',
      desc: '',
      args: [],
    );
  }

  /// `Enter location`
  String get enterLocation {
    return Intl.message(
      'Enter location',
      name: 'enterLocation',
      desc: '',
      args: [],
    );
  }

  /// `Enter contract number`
  String get enterContractNumber {
    return Intl.message(
      'Enter contract number',
      name: 'enterContractNumber',
      desc: '',
      args: [],
    );
  }

  /// `Attachments`
  String get attachments {
    return Intl.message(
      'Attachments',
      name: 'attachments',
      desc: '',
      args: [],
    );
  }

  /// `No Attachment`
  String get noAttachment {
    return Intl.message(
      'No Attachment',
      name: 'noAttachment',
      desc: '',
      args: [],
    );
  }

  /// `Please wait....`
  String get pleaseWait {
    return Intl.message(
      'Please wait....',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `Please enter meter number`
  String get pleaseEnterMeterNumber {
    return Intl.message(
      'Please enter meter number',
      name: 'pleaseEnterMeterNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please select utility provider`
  String get pleaseSelectUtilityProvider {
    return Intl.message(
      'Please select utility provider',
      name: 'pleaseSelectUtilityProvider',
      desc: '',
      args: [],
    );
  }

  /// `Please enter location`
  String get pleaseEnterLocation {
    return Intl.message(
      'Please enter location',
      name: 'pleaseEnterLocation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter contract number`
  String get pleaseEnterContractNumber {
    return Intl.message(
      'Please enter contract number',
      name: 'pleaseEnterContractNumber',
      desc: '',
      args: [],
    );
  }

  /// `Added By`
  String get addedBy {
    return Intl.message(
      'Added By',
      name: 'addedBy',
      desc: '',
      args: [],
    );
  }

  /// `Name Of Property`
  String get nameOfProperty {
    return Intl.message(
      'Name Of Property',
      name: 'nameOfProperty',
      desc: '',
      args: [],
    );
  }

  /// `Meter Type`
  String get meterType {
    return Intl.message(
      'Meter Type',
      name: 'meterType',
      desc: '',
      args: [],
    );
  }

  /// `Date Time`
  String get dateTime {
    return Intl.message(
      'Date Time',
      name: 'dateTime',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get addText {
    return Intl.message(
      'Add',
      name: 'addText',
      desc: '',
      args: [],
    );
  }

  /// `View Reading`
  String get viewReading {
    return Intl.message(
      'View Reading',
      name: 'viewReading',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Reading updated successfully`
  String get readingUpdatedSuccessfully {
    return Intl.message(
      'Reading updated successfully',
      name: 'readingUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Reading added successfully`
  String get readingAddedSuccessfully {
    return Intl.message(
      'Reading added successfully',
      name: 'readingAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Select meter number`
  String get selectMeterNumber {
    return Intl.message(
      'Select meter number',
      name: 'selectMeterNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter reading`
  String get enterReading {
    return Intl.message(
      'Enter reading',
      name: 'enterReading',
      desc: '',
      args: [],
    );
  }

  /// `Reading Date`
  String get readingDate {
    return Intl.message(
      'Reading Date',
      name: 'readingDate',
      desc: '',
      args: [],
    );
  }

  /// `Please select meter`
  String get pleaseSelectMeter {
    return Intl.message(
      'Please select meter',
      name: 'pleaseSelectMeter',
      desc: '',
      args: [],
    );
  }

  /// `Please add reading`
  String get pleaseAddReading {
    return Intl.message(
      'Please add reading',
      name: 'pleaseAddReading',
      desc: '',
      args: [],
    );
  }

  /// `Name Of Area`
  String get nameOfArea {
    return Intl.message(
      'Name Of Area',
      name: 'nameOfArea',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get complete {
    return Intl.message(
      'Complete',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `Change Ticket Status`
  String get changeTicketStatus {
    return Intl.message(
      'Change Ticket Status',
      name: 'changeTicketStatus',
      desc: '',
      args: [],
    );
  }

  /// `Add Ticket`
  String get addTicket {
    return Intl.message(
      'Add Ticket',
      name: 'addTicket',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Description`
  String get pleaseEnterDescription {
    return Intl.message(
      'Please Enter Description',
      name: 'pleaseEnterDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Status Changed successfully`
  String get ticketStatusChangedSuccessfully {
    return Intl.message(
      'Ticket Status Changed successfully',
      name: 'ticketStatusChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Title`
  String get ticketTitle {
    return Intl.message(
      'Ticket Title',
      name: 'ticketTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ticket`
  String get ticket {
    return Intl.message(
      'Ticket',
      name: 'ticket',
      desc: '',
      args: [],
    );
  }

  /// `Adding data for below property and area`
  String get AddingDataForBelowPropertyAndArea {
    return Intl.message(
      'Adding data for below property and area',
      name: 'AddingDataForBelowPropertyAndArea',
      desc: '',
      args: [],
    );
  }

  /// `RETRY`
  String get retry {
    return Intl.message(
      'RETRY',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `We’re unable to show results.\nPlease check your data\nconnection.`
  String get WeAreUnableToShowResults {
    return Intl.message(
      'We’re unable to show results.\nPlease check your data\nconnection.',
      name: 'WeAreUnableToShowResults',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Request to the server was cancelled.`
  String get requestToTheServerWasCancelled {
    return Intl.message(
      'Request to the server was cancelled.',
      name: 'requestToTheServerWasCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Connection timed out.`
  String get connectionTimedOut {
    return Intl.message(
      'Connection timed out.',
      name: 'connectionTimedOut',
      desc: '',
      args: [],
    );
  }

  /// `Receiving timeout occurred.`
  String get receivingTimeoutOccurred {
    return Intl.message(
      'Receiving timeout occurred.',
      name: 'receivingTimeoutOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Request send timeout.`
  String get requestSendTimeout {
    return Intl.message(
      'Request send timeout.',
      name: 'requestSendTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error occurred.`
  String get unexpectedErrorOccurred {
    return Intl.message(
      'Unexpected error occurred.',
      name: 'unexpectedErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Bad request.`
  String get badRequest {
    return Intl.message(
      'Bad request.',
      name: 'badRequest',
      desc: '',
      args: [],
    );
  }

  /// `No meter available, you can request for meter.`
  String get noMeterAvailable {
    return Intl.message(
      'No meter available, you can request for meter.',
      name: 'noMeterAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Request Meter Here`
  String get requestMeterHere {
    return Intl.message(
      'Request Meter Here',
      name: 'requestMeterHere',
      desc: '',
      args: [],
    );
  }

  /// `Write Comment...`
  String get writeComment {
    return Intl.message(
      'Write Comment...',
      name: 'writeComment',
      desc: '',
      args: [],
    );
  }

  /// `Please enter comment`
  String get pleaseEnterComment {
    return Intl.message(
      'Please enter comment',
      name: 'pleaseEnterComment',
      desc: '',
      args: [],
    );
  }

  /// `Please select property & area`
  String get pleaseSelectPropertyArea {
    return Intl.message(
      'Please select property & area',
      name: 'pleaseSelectPropertyArea',
      desc: '',
      args: [],
    );
  }

  /// `View Comments`
  String get viewComments {
    return Intl.message(
      'View Comments',
      name: 'viewComments',
      desc: '',
      args: [],
    );
  }

  /// `Press back again to exit app`
  String get pressBackAgainToExitApp {
    return Intl.message(
      'Press back again to exit app',
      name: 'pressBackAgainToExitApp',
      desc: '',
      args: [],
    );
  }

  /// `Mark all as read`
  String get markAllAsRead {
    return Intl.message(
      'Mark all as read',
      name: 'markAllAsRead',
      desc: '',
      args: [],
    );
  }

  /// `Remove Image`
  String get removeImage {
    return Intl.message(
      'Remove Image',
      name: 'removeImage',
      desc: '',
      args: [],
    );
  }

  /// `Search by meter number, area name, added by`
  String get searchByMeter {
    return Intl.message(
      'Search by meter number, area name, added by',
      name: 'searchByMeter',
      desc: '',
      args: [],
    );
  }

  /// `Search by meter number, reading, contract number`
  String get searchByReading {
    return Intl.message(
      'Search by meter number, reading, contract number',
      name: 'searchByReading',
      desc: '',
      args: [],
    );
  }

  /// `Search by property name, postal code `
  String get searchByProperty {
    return Intl.message(
      'Search by property name, postal code ',
      name: 'searchByProperty',
      desc: '',
      args: [],
    );
  }

  /// `Search by title, description`
  String get searchByTicket {
    return Intl.message(
      'Search by title, description',
      name: 'searchByTicket',
      desc: '',
      args: [],
    );
  }

  /// `Search by area name`
  String get searchByArea {
    return Intl.message(
      'Search by area name',
      name: 'searchByArea',
      desc: '',
      args: [],
    );
  }

  /// `Search by company or provider name`
  String get searchByContact {
    return Intl.message(
      'Search by company or provider name',
      name: 'searchByContact',
      desc: '',
      args: [],
    );
  }

  /// `Under Development...`
  String get underDevelopment {
    return Intl.message(
      'Under Development...',
      name: 'underDevelopment',
      desc: '',
      args: [],
    );
  }

  /// `Search by invoice number or contact`
  String get searchByInvoiceNumber {
    return Intl.message(
      'Search by invoice number or contact',
      name: 'searchByInvoiceNumber',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Re.D.`
  String get invoice_Re_D {
    return Intl.message(
      'Re.D.',
      name: 'invoice_Re_D',
      desc: '',
      args: [],
    );
  }

  /// `Invoice number`
  String get invoiceNumber {
    return Intl.message(
      'Invoice number',
      name: 'invoiceNumber',
      desc: '',
      args: [],
    );
  }

  /// `Invoice`
  String get invoice {
    return Intl.message(
      'Invoice',
      name: 'invoice',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Status Changed successfully`
  String get statusChangedSuccessfully {
    return Intl.message(
      'Status Changed successfully',
      name: 'statusChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Filter by property`
  String get filterByProperty {
    return Intl.message(
      'Filter by property',
      name: 'filterByProperty',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to undo?`
  String get undoContent {
    return Intl.message(
      'Are you sure you want to undo?',
      name: 'undoContent',
      desc: '',
      args: [],
    );
  }

  /// `Datev`
  String get datev {
    return Intl.message(
      'Datev',
      name: 'datev',
      desc: '',
      args: [],
    );
  }

  /// `General info`
  String get generalInfo {
    return Intl.message(
      'General info',
      name: 'generalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Date of invoice`
  String get dateOfInvoice {
    return Intl.message(
      'Date of invoice',
      name: 'dateOfInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Service date`
  String get serviceDate {
    return Intl.message(
      'Service date',
      name: 'serviceDate',
      desc: '',
      args: [],
    );
  }

  /// `Invoice amount`
  String get invoiceAmount {
    return Intl.message(
      'Invoice amount',
      name: 'invoiceAmount',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get paymentMethod {
    return Intl.message(
      'Payment method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Booking items`
  String get bookingItems {
    return Intl.message(
      'Booking items',
      name: 'bookingItems',
      desc: '',
      args: [],
    );
  }

  /// `Debit account`
  String get debitAccount {
    return Intl.message(
      'Debit account',
      name: 'debitAccount',
      desc: '',
      args: [],
    );
  }

  /// `Booking text`
  String get bookingText {
    return Intl.message(
      'Booking text',
      name: 'bookingText',
      desc: '',
      args: [],
    );
  }

  /// `Net amount`
  String get netAmount {
    return Intl.message(
      'Net amount',
      name: 'netAmount',
      desc: '',
      args: [],
    );
  }

  /// `Gross amount`
  String get grossAmount {
    return Intl.message(
      'Gross amount',
      name: 'grossAmount',
      desc: '',
      args: [],
    );
  }

  /// `VAT Incl.`
  String get VatIncl {
    return Intl.message(
      'VAT Incl.',
      name: 'VatIncl',
      desc: '',
      args: [],
    );
  }

  /// `Recurring info`
  String get recurringInfo {
    return Intl.message(
      'Recurring info',
      name: 'recurringInfo',
      desc: '',
      args: [],
    );
  }

  /// `Recurring invoice`
  String get recurringInvoice {
    return Intl.message(
      'Recurring invoice',
      name: 'recurringInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Monthly to`
  String get monthlyTo {
    return Intl.message(
      'Monthly to',
      name: 'monthlyTo',
      desc: '',
      args: [],
    );
  }

  /// `Total amount`
  String get totalAmount {
    return Intl.message(
      'Total amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Other info`
  String get otherInfo {
    return Intl.message(
      'Other info',
      name: 'otherInfo',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get transfer {
    return Intl.message(
      'Transfer',
      name: 'transfer',
      desc: '',
      args: [],
    );
  }

  /// `Confidential invoice`
  String get confidentialInvoice {
    return Intl.message(
      'Confidential invoice',
      name: 'confidentialInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Activate invoice`
  String get activateInvoice {
    return Intl.message(
      'Activate invoice',
      name: 'activateInvoice',
      desc: '',
      args: [],
    );
  }

  /// `BKA previous year`
  String get bKAPreviousYear {
    return Intl.message(
      'BKA previous year',
      name: 'bKAPreviousYear',
      desc: '',
      args: [],
    );
  }

  /// `Purchaser statement EK`
  String get purchaserStatementEK {
    return Intl.message(
      'Purchaser statement EK',
      name: 'purchaserStatementEK',
      desc: '',
      args: [],
    );
  }

  /// `Service contract`
  String get serviceContract {
    return Intl.message(
      'Service contract',
      name: 'serviceContract',
      desc: '',
      args: [],
    );
  }

  /// `Approved offer`
  String get approvedOffer {
    return Intl.message(
      'Approved offer',
      name: 'approvedOffer',
      desc: '',
      args: [],
    );
  }

  /// `Payment info`
  String get paymentInfo {
    return Intl.message(
      'Payment info',
      name: 'paymentInfo',
      desc: '',
      args: [],
    );
  }

  /// `IBAN`
  String get IBAN {
    return Intl.message(
      'IBAN',
      name: 'IBAN',
      desc: '',
      args: [],
    );
  }

  /// `Verified by`
  String get verifiedBy {
    return Intl.message(
      'Verified by',
      name: 'verifiedBy',
      desc: '',
      args: [],
    );
  }

  /// `BIC`
  String get BIC {
    return Intl.message(
      'BIC',
      name: 'BIC',
      desc: '',
      args: [],
    );
  }

  /// `Transfer amount`
  String get transferAmount {
    return Intl.message(
      'Transfer amount',
      name: 'transferAmount',
      desc: '',
      args: [],
    );
  }

  /// `Execution date`
  String get executionDate {
    return Intl.message(
      'Execution date',
      name: 'executionDate',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get actions {
    return Intl.message(
      'Actions',
      name: 'actions',
      desc: '',
      args: [],
    );
  }

  /// `Week`
  String get week {
    return Intl.message(
      'Week',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Datev upload successfully`
  String get datevUploadSuccessfully {
    return Intl.message(
      'Datev upload successfully',
      name: 'datevUploadSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `DATEV upload successful. Your request is in the queue. it may take some time.`
  String get datevUploadSuccessfully1 {
    return Intl.message(
      'DATEV upload successful. Your request is in the queue. it may take some time.',
      name: 'datevUploadSuccessfully1',
      desc: '',
      args: [],
    );
  }

  /// `Caution! HVBU approval is missing! - Are you sure?`
  String get confirmContent {
    return Intl.message(
      'Caution! HVBU approval is missing! - Are you sure?',
      name: 'confirmContent',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `This property does not have area`
  String get thisPropertyDoesNotHaveArea {
    return Intl.message(
      'This property does not have area',
      name: 'thisPropertyDoesNotHaveArea',
      desc: '',
      args: [],
    );
  }

  /// `Select Status`
  String get selectStatus {
    return Intl.message(
      'Select Status',
      name: 'selectStatus',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Unit Price`
  String get unitPrice {
    return Intl.message(
      'Unit Price',
      name: 'unitPrice',
      desc: '',
      args: [],
    );
  }

  /// `Service Date To`
  String get serviceDateTo {
    return Intl.message(
      'Service Date To',
      name: 'serviceDateTo',
      desc: '',
      args: [],
    );
  }

  /// `Service Date From`
  String get serviceDateFrom {
    return Intl.message(
      'Service Date From',
      name: 'serviceDateFrom',
      desc: '',
      args: [],
    );
  }

  /// `Crowd`
  String get crowd {
    return Intl.message(
      'Crowd',
      name: 'crowd',
      desc: '',
      args: [],
    );
  }

  /// `Starting Month`
  String get startingMonth {
    return Intl.message(
      'Starting Month',
      name: 'startingMonth',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message(
      'Currency',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `OutGoing Invoice`
  String get outGoingInvoice {
    return Intl.message(
      'OutGoing Invoice',
      name: 'outGoingInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Sales Tax`
  String get salesTax {
    return Intl.message(
      'Sales Tax',
      name: 'salesTax',
      desc: '',
      args: [],
    );
  }

  /// `Tax Amount`
  String get taxAmount {
    return Intl.message(
      'Tax Amount',
      name: 'taxAmount',
      desc: '',
      args: [],
    );
  }

  /// `Tax Percentage`
  String get taxPercentage {
    return Intl.message(
      'Tax Percentage',
      name: 'taxPercentage',
      desc: '',
      args: [],
    );
  }

  /// `Due-Date`
  String get dueDate {
    return Intl.message(
      'Due-Date',
      name: 'dueDate',
      desc: '',
      args: [],
    );
  }

  /// `Send Mail`
  String get sendMail {
    return Intl.message(
      'Send Mail',
      name: 'sendMail',
      desc: '',
      args: [],
    );
  }

  /// `Send Mail Date`
  String get sendMailDate {
    return Intl.message(
      'Send Mail Date',
      name: 'sendMailDate',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get areYouSure {
    return Intl.message(
      'Are you sure?',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure want to send mail again`
  String get areYouSureSendMailAgain {
    return Intl.message(
      'Are you sure want to send mail again',
      name: 'areYouSureSendMailAgain',
      desc: '',
      args: [],
    );
  }

  /// `Outgoing invoices email sent successfully.`
  String get mailSendSuccessfully {
    return Intl.message(
      'Outgoing invoices email sent successfully.',
      name: 'mailSendSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Contract`
  String get contract {
    return Intl.message(
      'Contract',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `Search by category or contact`
  String get searchByContractCategory {
    return Intl.message(
      'Search by category or contact',
      name: 'searchByContractCategory',
      desc: '',
      args: [],
    );
  }

  /// `Start Date`
  String get startDate {
    return Intl.message(
      'Start Date',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `Graduation On`
  String get graduationOn {
    return Intl.message(
      'Graduation On',
      name: 'graduationOn',
      desc: '',
      args: [],
    );
  }

  /// `Termination At The Latest`
  String get terminationAtTheLatest {
    return Intl.message(
      'Termination At The Latest',
      name: 'terminationAtTheLatest',
      desc: '',
      args: [],
    );
  }

  /// `Termination On`
  String get terminationOn {
    return Intl.message(
      'Termination On',
      name: 'terminationOn',
      desc: '',
      args: [],
    );
  }

  /// `Old Contract`
  String get oldContract {
    return Intl.message(
      'Old Contract',
      name: 'oldContract',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Offer`
  String get offer {
    return Intl.message(
      'Offer',
      name: 'offer',
      desc: '',
      args: [],
    );
  }

  /// `Search by topic name`
  String get searchByOffersNumber {
    return Intl.message(
      'Search by topic name',
      name: 'searchByOffersNumber',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Recommendation`
  String get recommendation {
    return Intl.message(
      'Recommendation',
      name: 'recommendation',
      desc: '',
      args: [],
    );
  }

  /// `Current account balance`
  String get currentAccountBalance {
    return Intl.message(
      'Current account balance',
      name: 'currentAccountBalance',
      desc: '',
      args: [],
    );
  }

  /// `Task`
  String get task {
    return Intl.message(
      'Task',
      name: 'task',
      desc: '',
      args: [],
    );
  }

  /// `End Date`
  String get endDate {
    return Intl.message(
      'End Date',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Report Detail`
  String get reportDetail {
    return Intl.message(
      'Report Detail',
      name: 'reportDetail',
      desc: '',
      args: [],
    );
  }

  /// `Caretaker`
  String get caretaker {
    return Intl.message(
      'Caretaker',
      name: 'caretaker',
      desc: '',
      args: [],
    );
  }

  /// `Download Report`
  String get downloadReport {
    return Intl.message(
      'Download Report',
      name: 'downloadReport',
      desc: '',
      args: [],
    );
  }

  /// `Select Task`
  String get selectTask {
    return Intl.message(
      'Select Task',
      name: 'selectTask',
      desc: '',
      args: [],
    );
  }

  /// `Enter note here...`
  String get enterNoteHere {
    return Intl.message(
      'Enter note here...',
      name: 'enterNoteHere',
      desc: '',
      args: [],
    );
  }

  /// `Choose File`
  String get chooseFile {
    return Intl.message(
      'Choose File',
      name: 'chooseFile',
      desc: '',
      args: [],
    );
  }

  /// `Add Task`
  String get addTask {
    return Intl.message(
      'Add Task',
      name: 'addTask',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Edit Report`
  String get editReport {
    return Intl.message(
      'Edit Report',
      name: 'editReport',
      desc: '',
      args: [],
    );
  }

  /// `Add Report`
  String get addReport {
    return Intl.message(
      'Add Report',
      name: 'addReport',
      desc: '',
      args: [],
    );
  }

  /// `Search by week and year`
  String get searchByWeekAndYear {
    return Intl.message(
      'Search by week and year',
      name: 'searchByWeekAndYear',
      desc: '',
      args: [],
    );
  }

  /// `Select start date`
  String get selectStartDate {
    return Intl.message(
      'Select start date',
      name: 'selectStartDate',
      desc: '',
      args: [],
    );
  }

  /// `Select end date`
  String get selectEndDate {
    return Intl.message(
      'Select end date',
      name: 'selectEndDate',
      desc: '',
      args: [],
    );
  }

  /// `Filter by week`
  String get filterByWeek {
    return Intl.message(
      'Filter by week',
      name: 'filterByWeek',
      desc: '',
      args: [],
    );
  }

  /// `Filter by year`
  String get filterByYear {
    return Intl.message(
      'Filter by year',
      name: 'filterByYear',
      desc: '',
      args: [],
    );
  }

  /// `BKA`
  String get Bka {
    return Intl.message(
      'BKA',
      name: 'Bka',
      desc: '',
      args: [],
    );
  }

  /// `Renter`
  String get renter {
    return Intl.message(
      'Renter',
      name: 'renter',
      desc: '',
      args: [],
    );
  }

  /// `Booked Date`
  String get bookedDate {
    return Intl.message(
      'Booked Date',
      name: 'bookedDate',
      desc: '',
      args: [],
    );
  }

  /// `Payment Date`
  String get paymentDate {
    return Intl.message(
      'Payment Date',
      name: 'paymentDate',
      desc: '',
      args: [],
    );
  }

  /// `Tenant`
  String get tenant {
    return Intl.message(
      'Tenant',
      name: 'tenant',
      desc: '',
      args: [],
    );
  }

  /// `BKA-ID`
  String get bkaId {
    return Intl.message(
      'BKA-ID',
      name: 'bkaId',
      desc: '',
      args: [],
    );
  }

  /// `BKA Details`
  String get bkaDetail {
    return Intl.message(
      'BKA Details',
      name: 'bkaDetail',
      desc: '',
      args: [],
    );
  }

  /// `Search by property name and tenant name`
  String get searchByPropertyNameAndTenantName {
    return Intl.message(
      'Search by property name and tenant name',
      name: 'searchByPropertyNameAndTenantName',
      desc: '',
      args: [],
    );
  }

  /// `Debitor`
  String get debitor {
    return Intl.message(
      'Debitor',
      name: 'debitor',
      desc: '',
      args: [],
    );
  }

  /// `Select year`
  String get selectYear {
    return Intl.message(
      'Select year',
      name: 'selectYear',
      desc: '',
      args: [],
    );
  }

  /// `Select Week`
  String get selectWeek {
    return Intl.message(
      'Select Week',
      name: 'selectWeek',
      desc: '',
      args: [],
    );
  }

  /// `Report updated successfully`
  String get reportUpdatedSuccessfully {
    return Intl.message(
      'Report updated successfully',
      name: 'reportUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Report added successfully`
  String get reportAddedSuccessfully {
    return Intl.message(
      'Report added successfully',
      name: 'reportAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Broadcast`
  String get broadcast {
    return Intl.message(
      'Broadcast',
      name: 'broadcast',
      desc: '',
      args: [],
    );
  }

  /// `Broadcast Detail`
  String get broadcastDetail {
    return Intl.message(
      'Broadcast Detail',
      name: 'broadcastDetail',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Search by theme and news`
  String get searchByThemeAndNews {
    return Intl.message(
      'Search by theme and news',
      name: 'searchByThemeAndNews',
      desc: '',
      args: [],
    );
  }

  /// `Detail View not available`
  String get detailViewError {
    return Intl.message(
      'Detail View not available',
      name: 'detailViewError',
      desc: '',
      args: [],
    );
  }

  /// `Joint Venture`
  String get jointVenture {
    return Intl.message(
      'Joint Venture',
      name: 'jointVenture',
      desc: '',
      args: [],
    );
  }

  /// `Purchase price`
  String get purchasePrice {
    return Intl.message(
      'Purchase price',
      name: 'purchasePrice',
      desc: '',
      args: [],
    );
  }

  /// `FFO`
  String get ffo {
    return Intl.message(
      'FFO',
      name: 'ffo',
      desc: '',
      args: [],
    );
  }

  /// `External investor`
  String get externalInvestor {
    return Intl.message(
      'External investor',
      name: 'externalInvestor',
      desc: '',
      args: [],
    );
  }

  /// `ROI (%)`
  String get roi {
    return Intl.message(
      'ROI (%)',
      name: 'roi',
      desc: '',
      args: [],
    );
  }

  /// `FCR ROI (%)`
  String get fcrROI {
    return Intl.message(
      'FCR ROI (%)',
      name: 'fcrROI',
      desc: '',
      args: [],
    );
  }

  /// `Own Funds`
  String get ownFunds {
    return Intl.message(
      'Own Funds',
      name: 'ownFunds',
      desc: '',
      args: [],
    );
  }

  /// `Equity distribution FI (%)`
  String get equityDistributionFI {
    return Intl.message(
      'Equity distribution FI (%)',
      name: 'equityDistributionFI',
      desc: '',
      args: [],
    );
  }

  /// `Copy Link`
  String get copyLink {
    return Intl.message(
      'Copy Link',
      name: 'copyLink',
      desc: '',
      args: [],
    );
  }

  /// `Share Link`
  String get shareLink {
    return Intl.message(
      'Share Link',
      name: 'shareLink',
      desc: '',
      args: [],
    );
  }

  /// `Link copied successfully`
  String get copyLinkMessage {
    return Intl.message(
      'Link copied successfully',
      name: 'copyLinkMessage',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get biller {
    return Intl.message(
      'Contact',
      name: 'biller',
      desc: '',
      args: [],
    );
  }

  /// `To-Do`
  String get todo {
    return Intl.message(
      'To-Do',
      name: 'todo',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

class Endpoints {
  Endpoints._();

  // static const String baseURL = 'https://intranet-v4.fcr-development.in/api';
  static const String baseURL = 'https://fcr.immowin24.de/api';
  static const String privacyPolicyURL =
      'https://fcr-innovation.de/datenschutz/';

  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration connectionTimeout = Duration(seconds: 30);

  static const loginEndPint = '/auth/generate-otp';
  static const verifyOtpEndPint = '/auth/verify-otp';
  static const logoutEndPint = '/auth/revoke-token';
  static const getProfileEndPint = '/user/profile';
  static const getProfileRemoveEndPint = '/user/remove-profile-picture';
  static const getUserSearchEndPint = '/user/search';

  static const getHomeWidgetEndPint = '/general/dashboard-menu';

  // static const getHomeWidgetEndPint = '/general/menu';

  //General
  static const setHomePropertyArea = '/general/option-selected';
  static const notificationSetting = '/general/notification-setting';

  ///old api for close all notification
  // static const toggleNotificationEndPoint = '/user/toggle-notification';

  static const getPropertiesEndPint = '/properties';
  static const getAreaEndPint = '/tenants';

  static const getTicketsEndPint = '/tickets';

  static const getBroadcastEndPint = '/tenant-broadcast';

  /// invoice
  static const releaseInvoiceEndPint = '/invoice/release';
  static const getInvoiceEndPint = '/invoice';
  static const datevBookingEndPint = '/invoice/datev-booking';
  static const getInvoiceStatusEndPint = '/invoice/statuses';

  /// out-going-invoice
  static const releaseOutGoingInvoiceEndPint = '/outgoing-invoice/release';
  static const getOutGoingInvoiceEndPint = '/outgoing-invoice';
  static const datevOutGoingInvoiceBookingEndPint =
      '/outgoing-invoice/datev-booking';
  static const getOutGoingInvoiceStatusEndPint = '/outgoing-invoice/statuses';
  static const sendMailEndPint = '/outgoing-invoice/send-mail/';

  /// contract
  static const releaseContractEndPint = '/contract/release';
  static const getContractEndPint = '/contract';
  static const getContractStatusEndPint = '/contract/statuses';

  /// Offers
  static const releaseOffersEndPint = '/offer/release';
  static const getOffersEndPint = '/offer';
  static const getOffersDetailEndPint = '/offer/detail';
  static const getOffersStatusEndPint = '/offer/statuses';

  /// caretaker
  static const getCaretakerEndPint = '/building-superintendent';
  static const getCaretakerReportEndPint = '/building-superintendent';
  static const getDownloadReportLinkEndPint = '/building-superintendent/report';
  static const getTasksEndPint = '/building-superintendent-task';
  static const getReportTasksEndPint = '/building-superintendent-task/options';

  // static const releaseOffersEndPint = '/offer/release';
  // static const getOffersStatusEndPint = '/offer/statuses';

  /// BKA
  static const releaseBkaEndPint = '/bka/release';
  static const getBkaEndPint = '/bka';
  static const getStatusEndPint = '/bka/statuses';
  static const getBkaStatusEndPint = '/bka/bka-statuses';

  static const createSharableLinkEndPint = '/file/create-shareable-link';

  // JointVenture
  static const getJointVentureEndPint = '/joint-venture';

  static const getCommentEndPint = '/comments';
  static const saveCommentTagUser = '/comments/thread/store';

  static const readingEndPint = '/reading';
  static const getAllMetersEndPint = '/meter/option';
  static const meterEndPoint = '/meter';
  static const fcmTokenUpdate = '/user/firebase-token';
  static const contactSearchEndPoint = '/contact/search';


  static const getNotificationEndPoint = '/notification';
  static const readNotificationEndPoint =
      '/notification/toggle'; //?status=1 read, 0 unread
  static const getTodoEndPoint = '/general/daily-activity';
}

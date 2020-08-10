class AppUrl {
  AppUrl();

  static String url(String apiBaseUrl, String apiUrl) {
    return apiBaseUrl + apiUrl;
  }

  static String apiMobileVer1 = '/api/m/v1';
  static String authNewToken = '/auth/newToken';

  static String escalation = '/escalation';

  static String escalationIds = '/escalation/escalationIds';
  static String notificationRead = '/notification/read';
}

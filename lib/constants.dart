class Constants {
  static const String ALI_APP_KEY = "25041758";
  static const String ALI_APP_SECRET = "d488e6604ebc24cf4955c29957b23163";
}

class UrlConstants {
  static bool online = true;
  static bool useAli = true;

  static const String _GW_HOST_ONLINE = "https://gw.csdn.net";
  static const String _GW_HOST_ONLINE_ALI = "https://app-gw.csdn.net";
  static const String _GW_HOST_TEST = "https://192.168.50.98:8552";

  static const String _PASSPORT_HOST_ONLINE = "https://passport.csdn.net";
  static const String _PASSPORT_HOST_TEST = "https://test-passport.csdn.net";

  static const String _MSG_HOST_ONLINE = "https://msg.csdn.net";
  static const String _MSG_HOST_TEST = "https://test-notify.csdn.net";

  static const String _WEB_URL_ONLINE = "https://webapp.csdn.net";
  static const String _WEB_URL_TEST = "https://test-webapp.csdn.net";

  static String _getGwHost() {
    String onlineGwHost = useAli ? _GW_HOST_ONLINE_ALI : _GW_HOST_ONLINE;
    return online ? onlineGwHost : _GW_HOST_TEST;
  }

  static String getGwCmsHost() {
    return _getGwHost() + "/cms-app";
  }

  static String getGwCuiHost() {
    return _getGwHost() + "/cui-service";
  }

  static String getGwInfoHost() {
    return _getGwHost() + "/infostream";
  }

  static String getGwEbookHost() {
    return _getGwHost() + "/ebook";
  }

  static String getPassportHost() {
    return online ? _PASSPORT_HOST_ONLINE : _PASSPORT_HOST_TEST;
  }

  static String getMsgHost() {
    return online ? _MSG_HOST_ONLINE : _MSG_HOST_TEST;
  }

  static String getWebHost() {
    return online ? _WEB_URL_ONLINE : _WEB_URL_TEST;
  }
}

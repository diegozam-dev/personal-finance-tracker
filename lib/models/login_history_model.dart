class LoginHistoryModel {
  final int loginHistoryId;
  final int userId;
  final DateTime loggedAt;
  final String status; // -> Success - Failed
  final String ipAddress;
  final String deviceInfo;

  LoginHistoryModel({
    required this.loginHistoryId,
    required this.userId,
    required this.loggedAt,
    required this.status,
    required this.ipAddress,
    required this.deviceInfo,
  });
}

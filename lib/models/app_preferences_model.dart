class AppPreferencesModel {
  final int appPreferencesId;
  final int userId;
  String languageCode; // -> ES - EN
  String currency; // -> USD - EUR
  String theme; // -> Dark - Light - Device

  AppPreferencesModel({
    required this.appPreferencesId,
    required this.userId,
    required this.languageCode,
    required this.currency,
    required this.theme,
  });
}

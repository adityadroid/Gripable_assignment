class FlavorConfig {
  FlavorConfig._internal();

  /// Creates an instance of `FlavorConfig` from the provided `configMap`.
  ///
  /// The `apiBaseUrl` field is mapped to the `"BASE_URL"` key in the configMap
  /// If the `"BASE_URL"` key is missing or the value is `null`, an empty string
  /// is assigned as the default value.
  factory FlavorConfig.fromMap(
    Map<String, String> configMap,
    AppEnvironment environment,
  ) {
    _instance ??= FlavorConfig._internal();
    _instance!.apiBaseUrl = configMap['API_BASE_URL'] ?? '';
    _instance!.environment = environment;
    return _instance!;
  }

  /// Retrieves the current instance of `FlavorConfig`.
  static FlavorConfig getInstance() {
    return _instance!;
  }

  static FlavorConfig? _instance;

  late String apiBaseUrl;
  late AppEnvironment environment;

  bool get isDevelopment => environment == AppEnvironment.development;
  bool get isProduction => environment == AppEnvironment.production;
  bool get isStaging => environment == AppEnvironment.staging;
}

enum AppEnvironment { staging, development, production }

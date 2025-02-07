class ApiPath {
  // Base URL
  static const String _baseUrl = "https://ecom-rs8e.onrender.com/api";

  // Auth  URL Path
  static String postLoginEndpoint() {
    return "$_baseUrl/auth/login";
  }

  static String postRegisterEndpoint() {
    return "$_baseUrl/auth/signup";
  }
}

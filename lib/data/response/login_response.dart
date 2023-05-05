class LoginResponse {
  final String accessToken;
  final String type;

  LoginResponse({
    required this.accessToken,
    required this.type,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      accessToken: json['access_token'],
      type: json['type'],
    );
  }
}

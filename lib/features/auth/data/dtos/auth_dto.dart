class AuthDTO {
  AuthDTO({
    required this.token,
  });
  final String token;

  factory AuthDTO.fromJson(
    Map<String, dynamic> map,
  ) {
    return AuthDTO(
      token: map['data']['token'] as String,
    );
  }

}


import '../../domain/entities/refresh_token.dart';
import '../../domain/entities/token.dart';

class AuthenticationUserModel {
  const AuthenticationUserModel({
    required this.id,
    required this.email,
    required this.displayName,
    required this.avatarImageUrl,
    required this.avatarImageThumbUrl,
    required this.token,
    required this.refreshToken,
    required this.updated,
    required this.created,
  });

  final int id;

  final String email;

  final String displayName;

  final String avatarImageUrl;

  final String avatarImageThumbUrl;

  final Token token;

  final RefreshToken refreshToken;

  final String created;

  final String updated;

  factory AuthenticationUserModel.fromJson(Map<String, dynamic> json) {
    return AuthenticationUserModel(
      id: json['id'],
      email: json['email'],
      displayName: json['name'],
      avatarImageUrl: json['avatar_image_url'],
      avatarImageThumbUrl: json['avatar_image_thumb_url'],
      token: json['token'],
      refreshToken: json['refresh_token'],
      created: json['created'],
      updated: json['updated'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': displayName,
      'avatar_image_url': avatarImageUrl,
      'avatar_image_thumb_url': avatarImageThumbUrl,
      'token': token,
      'refresh_token': refreshToken,
      'created': created,
      'updated': updated,
    };
  }
}

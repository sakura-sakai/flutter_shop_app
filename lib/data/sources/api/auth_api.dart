import 'package:shop_app/domain/entities/refresh_token.dart';

import '../../../core/services/api/api.dart';
import '../../../core/services/exceptions/exceptions.dart';
import '../../../domain/entities/login_request_auth.dart';
import '../../model/authentication_user_model.dart';

class AuthApi {
  AuthApi([ApiClient? client]) : _client = client ?? ApiClient();

  final ApiClient _client;

  Future<AuthenticationUserModel> login(LoginRequestAuth authRequest) async {
    try {
      final response = await _client.invokeAPI(
        '/api/v1/auth',
        apiMethod: ApiMethod.post,
        bodyData: authRequest.toJson(),
      );

      return AuthenticationUserModel.fromJson(response.data!);
    } catch (e) {
      throw AppException.handler(e);
    }
  }

  Future<void> logout() async {
    try {
      await _client.invokeAPI(
        '/api/v1/auth',
        apiMethod: ApiMethod.delete,
      );
    } catch (e) {
      throw AppException.handler(e);
    }
  }

  Future<AuthenticationUserModel> refreshToken(
    RefreshToken refreshToken,
  ) async {
    try {
      final response = await _client.invokeAPI(
        '/api/v1/auth/refresh',
        apiMethod: ApiMethod.post,
        bodyData: refreshToken.toJson(),
      );

      return AuthenticationUserModel.fromJson(response.data!);
    } catch (e) {
      throw AppException.handler(e);
    }
  }
}

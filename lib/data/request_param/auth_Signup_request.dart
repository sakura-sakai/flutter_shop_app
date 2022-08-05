import '../../core/services/exceptions/exceptions.dart';

class AuthSignupRequest {
  String name;
  String email;
  String password;

  AuthSignupRequest(this.name, this.email, this.password,) {
    if (name.isEmpty) {
      throw NotFoundException('email');
    }

    if (email.isEmpty) {
      throw NotFoundException('email');
    }

    if (password.isEmpty) {
      throw NotFoundException("password");
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
    };
  }
}

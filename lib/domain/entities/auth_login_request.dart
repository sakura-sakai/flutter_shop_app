import '../../core/services/exceptions/exceptions.dart';

class AuthLoginRequest {
   String? name;
   String email;
   String password;

  AuthLoginRequest(this.email, this.password, [this.name]) {
    if (email.isEmpty) {
      throw NotFoundException('email');
    }

    if (password.isEmpty) {
      throw NotFoundException("password");
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
    };
  }
}

class LoginRequestAuth {
   String email;
   String password;

  LoginRequestAuth(this.email, this.password);

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
    };
  }
}

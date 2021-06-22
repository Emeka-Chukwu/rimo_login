class UserModel {
  String email;
  String password;

  UserModel({required this.email, required this.password});

  Map<String, dynamic> toJson() => {
        "email": this.email,
        "password": this.password,
      };
}

class AuthsUser {
  late String message;
  late Data data;
  late bool error;
  late int status;

  AuthsUser(
      {required this.message,
      required this.data,
      required this.error,
      required this.status});

  AuthsUser.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
    error = json['error'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['error'] = this.error;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  late String token;

  Data({required this.token});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    return data;
  }
}

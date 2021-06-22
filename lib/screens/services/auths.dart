import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login_test/models/user.dart';
import 'package:login_test/screens/dashboard.dart';

var url = Uri.parse('https://example.com/whatsit/create');

class AuthsServices {
  Future<void> loginUser(UserModel userModel, BuildContext context) async {
    var url = Uri.parse(
        'https://my-cscore-development.herokuapp.com/api/v1/enterprise/login');

    try {
      print("starting");

      final dataUser = await http.post(
        url,
        body: {"email": userModel.email, "password": userModel.password},
      );
      print("ending");
      print(dataUser.statusCode);
      if (dataUser.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DashBoardHome(),
          ),
        );
      }
      // print()
    } catch (e) {
      print(e.toString());
    }
  }
}

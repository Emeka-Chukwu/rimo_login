import 'package:flutter/material.dart';
import 'package:login_test/models/user.dart';
import 'package:login_test/screens/dashboard.dart';
import 'package:login_test/screens/services/auths.dart';
import 'package:login_test/utils/config.dart';
import 'package:login_test/utils/margin.dart';
import 'package:login_test/widget/button.dart';
import 'package:login_test/widget/input_text.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final AuthsServices authsServices = AuthsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YMargin(height: Responsive.screenHeight(6, context)),
                      Container(
                        alignment: Alignment.center,
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                          ),
                        ),
                      ),
                      YMargin(height: Responsive.screenHeight(6, context)),
                      Text(
                        "Create an account",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      YMargin(height: 20),
                      Text(
                        "Let’s get started by adding your phone number that will be associated with your Settl account!",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          height: 1.85,
                          color: Colors.white,
                        ),
                      ),
                      YMargin(height: 30),
                    ],
                  ),
                ),
                YMargin(height: Responsive.screenHeight(5, context)),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        YMargin(height: Responsive.screenHeight(8, context)),
                        TextInputField(
                          controller: email,
                          title: 'Email',
                        ),
                        YMargin(height: Responsive.screenHeight(4, context)),
                        TextInputField(
                          controller: password,
                          title: 'password',
                          obscure: true,
                        ),
                        YMargin(height: Responsive.screenHeight(4, context)),
                        ButtonComp(
                          title: "Login",
                          onTap: () {
                            if (email.text.length > 5 &&
                                password.text.length > 5) {
                              authsServices.loginUser(
                                  UserModel(
                                    email: email.text,
                                    password: password.text,
                                  ),
                                  context);
                            } else {
                              print("not Validated");
                            }
                          },
                        ),
                        YMargin(height: Responsive.screenHeight(11, context)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const Color purple = Color(0xff4F1699);

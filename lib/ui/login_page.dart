import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:promilo/components/login/password.dart';
import 'package:promilo/ui/home_page.dart';
import 'package:promilo/ui/main.dart';

import '../components/login/forget_password.dart';
import '../components/login/login.dart';
import '../components/login/login_icons.dart';
import '../components/login/login_signup.dart';
import '../components/login/or_widget.dart';
import '../components/login/otp_forget_password.dart';
import '../components/login/privacy.dart';
import '../components/login/submit.dart';
import '../components/login/username_password.dart';
import '../components/login/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _textUserNameController = TextEditingController();

  final _textPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  bool btnEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20,
              ),
              WelcomeText(mTitle: "promilo"),
              SizedBox(
                height: 60,
              ),
              WelcomeText(
                mTitle: "Hi, Welcome Back!",
              ),
              SizedBox(
                height: 40,
              ),
              LoginText(
                  mLoginText: "Please Sign in to continue",
                  mColor: Colors.black),
              UserNamePassword(
                  hintMessage: "Enter Email or Mob No.",
                  errorMessage: "Enter valid user name",
                  onEditingComplete: onEditingComplete,
                  mTextEditingController: _textUserNameController),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OTPForgetPassword(mOTPForgetPassword: "Sign In With OTP"),
                ],
              ),
              LoginText(mLoginText: "Password", mColor: Colors.black),
              Password(
                  hintMessage: "Enter Password",
                  errorMessage: "Enter valid Password",
                  onEditingComplete: onCompleteForm,
                  mTextEditingController: _textPasswordController),
              ForgetPassword(
                mForgetPassword: "Forget Password",
                onEditingComplete: onValueChanged,
              ),
              SubmitButton(onEditingComplete: onLogin , btnEnabled: btnEnabled,),
              SizedBox(
                height: 40,
              ),
              OrWidget(),
              LoginIcons(),
              LoginSignup(),
              Privacy()
            ]),
          ),
        ),
      ),
    );
  }

  void onEditingComplete() {}


  _btnSubmitOpt(){

  }

  void onLogin() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MainPage()));
  }

  void onCompleteForm() {
    if(_textPasswordController.text.isNotEmpty){

    }

    if(_textUserNameController.text.isNotEmpty){

    }



  }

  onValueChanged(bool? p1) {}
}

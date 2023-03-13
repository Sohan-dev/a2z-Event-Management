import 'package:a2z_event/controller/Login/LoginController.dart';
import 'package:a2z_event/themes/theme.dart';
import 'package:a2z_event/utils/routes.dart';
import 'package:a2z_event/widget/TextInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import '../Home/Dashboard.dart';
import '../Home/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool rememberMe = false;
  LoginController loginController = Get.put(LoginController());

  String username = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;
      });

  checkLogin(BuildContext context) async {
    print(_formKey.currentState!.validate());
    if (_formKey.currentState!.validate()) {
      loginController.login();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Center(
                  child: Image(
                    width: 250,
                    height: 200,
                    image: AssetImage(Images.logo),
                  ),
                ),
              ),
              Text(
                'Welcome,',
                style: TextStyle(
                    fontFamily: GoogleFonts.meriendaOne(
                            textStyle: Theme.of(context).textTheme.bodyLarge)
                        .fontFamily,
                    fontSize: 30),
              ),
              Text(
                'Sign in to continue!',
                style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                  height: 40,
                  width: 150,
                  textEditingController: loginController.emailController,
                  borderColor: Colors.grey,
                  placeholder: 'Email Address',
                  onChanged: (data) {
                    username = data;
                    setState(() {});
                  }),
              TextWidget(
                  height: 40,
                  width: 150,
                  textEditingController: loginController.passwordController,
                  borderColor: Colors.grey,
                  placeholder: 'Password',
                  onChanged: (data) {
                    password = data;
                    setState(() {});
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  !rememberMe
                      ? InkWell(
                          onTap: () => {_onRememberMeChanged(!rememberMe)},
                          child: const Icon(
                            Icons.check_box_outline_blank,
                            color: Colors.blue,
                          ),
                        )
                      : InkWell(
                          onTap: () => {_onRememberMeChanged(!rememberMe)},
                          child: const Icon(
                            Icons.indeterminate_check_box_rounded,
                            color: Colors.blue,
                          ),
                        ),
                  const Text('Remember Me'),
                  InkWell(
                    child: Text(
                      'I forgot my password',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          color: Colors.deepPurple),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFF833E),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                height: 50.0,
                width: 300,
                child: InkWell(
                  splashColor: Colors.green,
                  onTap: () {
                    // Navigator.of(context).pushAndRemoveUntil(
                    //     MaterialPageRoute(builder: (context) => const Home()),
                    //     (Route route) => false);
                    checkLogin(context);
                  },
                  child: Ink(
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t Have an account?',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      // print('Signup Success');
                      // Navigator.pushNamed(context, Routes.signupRoute);
                      Navigator.of(context).pushNamed(Routes.signupRoute);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          color: Colors.deepPurple),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

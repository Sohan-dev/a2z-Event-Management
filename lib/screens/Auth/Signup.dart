import 'package:a2z_event/screens/Auth/Login.dart';
import 'package:a2z_event/themes/theme.dart';
import 'package:a2z_event/widget/TextInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              children: [
                Text('Create Account,',
                    style: TextStyle(
                        fontFamily: GoogleFonts.meriendaOne(
                                textStyle:
                                    Theme.of(context).textTheme.bodyLarge)
                            .fontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 28)),
                Text(
                  'Sign Up to continue!',
                  style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      // fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextWidget(
                    height: 40,
                    width: 150,
                    borderColor: Colors.grey,
                    placeholder: 'First Name',
                    onChanged: (data) {
                      print(data);
                    }),
                TextWidget(
                    height: 40,
                    width: 150,
                    borderColor: Colors.grey,
                    placeholder: 'Last Name',
                    onChanged: (data) {
                      print(data);
                    }),
                TextWidget(
                    height: 40,
                    width: 150,
                    borderColor: Colors.grey,
                    placeholder: 'Email Address',
                    onChanged: (data) {
                      print(data);
                    }),
                TextWidget(
                    height: 40,
                    width: 150,
                    borderColor: Colors.grey,
                    placeholder: 'Password',
                    onChanged: (data) {
                      print(data);
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
                    const Text(
                        'I agree to the Terms & Conditions and\n Privacy Policy'),
                    // InkWell(
                    //   child: Text(
                    //     'I forgot my password',
                    //     style: TextStyle(
                    //         fontSize: 16.0,
                    //         fontFamily: GoogleFonts.lato().fontFamily,
                    //         color: Colors.deepPurple),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFFF833E),
                      borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  height: 50.0,
                  width: 300,
                  child: InkWell(
                    onTap: () {
                      print('Sign in');
                    },
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
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have an account?',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          color: Colors.black),
                    ),
                    InkWell(
                      onTap: () => {Get.off(const Login())},
                      child: Text(
                        'Login',
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
      ),
    );
  }
}

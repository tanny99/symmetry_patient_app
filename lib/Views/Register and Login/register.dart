import 'package:flutter/material.dart';

import '../../Utilities/Components/general_componets.dart';
import '../../Utilities/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          height: Config(context).height,
          width: Config(context).width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [blue2, blue3],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  "assets/images/register_vector.png",
                  height: 250,
                  width: 250,
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  decoration: BoxDecoration(
                    color: white1,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(23),
                      topLeft: Radius.circular(23),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Using credentials from pro health',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: grey3,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        decoration: customInputDecoration(hintText: 'Email'),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        obscureText: _obscureText1,
                        decoration: customInputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText1 = !_obscureText1;
                              });
                            },
                            icon: const Icon(Icons.remove_red_eye_outlined),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        obscureText: _obscureText2,
                        decoration: customInputDecoration(
                          hintText: 'Confirm password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText2 = !_obscureText2;
                              });
                            },
                            icon: const Icon(Icons.remove_red_eye_outlined),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      CustomTextButton(
                        onTap: () {
                          Navigator.pushNamed(context, 'landing');
                        },
                        color: blue1,
                        borderRadius: 10,
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: white1,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:patient_side/Views/Register%20and%20Login/login.dart';
import 'package:patient_side/Views/Register%20and%20Login/register.dart';

import '../../Utilities/Components/general_componets.dart';
import '../../Utilities/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Config(context).height,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 90,
                      height: 78,
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      'Symmetry',
                      style: TextStyle(
                          color: grey1,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Get Well',
                      style: TextStyle(
                          color: grey1,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      color: blue1,
                      borderRadius: 10,
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: white1,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    CustomTextButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      color: white1,
                      borderRadius: 10,
                      child: Text(
                        'Register',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: blue1,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

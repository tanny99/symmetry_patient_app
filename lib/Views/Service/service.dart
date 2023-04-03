import 'package:flutter/material.dart';
import 'package:patient_side/Utilities/constants.dart';

import '../../Utilities/Components/service_screen_components.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: Config(context).height - 130,
            width: Config(context).width,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: Config(context).width,
                  height: Config(context).height * 0.46,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: serviceItem(
                                imageText: 'home_exercise',
                                label: 'Home Exercise Program',
                              ),
                            ),
                            Expanded(
                              child: serviceItem(
                                imageText: 'tele_md',
                                label: 'Tele-MD',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: serviceItem(
                                imageText: 'pharmacy_medical',
                                label: 'Pharmacy & Medical Supplies',
                              ),
                            ),
                            Expanded(
                              child: serviceItem(
                                imageText: 'health_store',
                                label: 'Health Store',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 126,
                  child: Image.asset(
                    "assets/images/ad1.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: 126,
                  child: Image.asset(
                    "assets/images/ad2.png",
                    fit: BoxFit.fitWidth,
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

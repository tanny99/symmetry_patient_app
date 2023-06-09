import 'package:flutter/material.dart';
import 'package:patient_side/models/test_data.dart';

import '../../../Utilities/Components/general_componets.dart';
import '../../../Utilities/Components/raise_complaint_screen_component.dart';
import '../../../Utilities/constants.dart';

class ComplainAgainstClinicianScreen extends StatefulWidget {
  const ComplainAgainstClinicianScreen({Key? key}) : super(key: key);

  @override
  State<ComplainAgainstClinicianScreen> createState() =>
      _ComplainAgainstClinicianScreenState();
}

class _ComplainAgainstClinicianScreenState
    extends State<ComplainAgainstClinicianScreen> {
  String _selectedClinician = clinicians[0]['occupation'];
  String _selectedReason = complainReasons[0]['reason'];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: blue1,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: white3,
            ),
          ),
          titleSpacing: 0,
          title: Text(
            'Complain Against Clinician',
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: white1,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: SizedBox(
                height: Config(context).height,
                width: Config(context).width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Clinician',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: blue1,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 36,
                      child: DropdownButtonFormField(
                        borderRadius: BorderRadius.circular(30),
                        decoration: customDropDownInputDecoration(),
                        iconEnabledColor: blue1,
                        iconSize: 35,
                        value: _selectedClinician,
                        items: clinicians
                            .map(
                              (e) => DropdownMenuItem(
                                value: e['occupation'],
                                child: clinicianListItem(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedClinician = value as String;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Reason of complaint',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: blue1,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 36,
                      child: DropdownButtonFormField(
                        borderRadius: BorderRadius.circular(30),
                        decoration: customDropDownInputDecoration(),
                        iconEnabledColor: blue1,
                        iconSize: 35,
                        value: _selectedReason,
                        items: complainReasons
                            .map(
                              (e) => DropdownMenuItem(
                                value: e['reason'],
                                child: Text(
                                  e['reason'],
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: black3,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedReason = value as String;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Additional comments',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: blue1,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                            color: grey10,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                            color: grey10,
                          ),
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                            color: grey4,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        fillColor: white1,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                      ),
                      maxLines: 10,
                      minLines: 8,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                          height: 15,
                          child: Checkbox(
                            value: false,
                            onChanged: (value) {},
                            side: BorderSide(
                              color: grey10,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Complain Anonymously',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: black2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 230,
                    ),
                    CustomTextButton(
                      onTap: () {
                        showDialogBox(context);
                      },
                      color: blue1,
                      borderRadius: 15,
                      child: Text(
                        'Submit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: white1,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

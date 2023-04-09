import 'package:flutter/material.dart';

import '../../../Utilities/Components/general_componets.dart';
import '../../../Utilities/Components/raise_complaint_screen_component.dart';
import '../../../Utilities/constants.dart';
import '../../../models/test_data.dart';

class ComplainAgainstProHealthScreen extends StatefulWidget {
  const ComplainAgainstProHealthScreen({Key? key}) : super(key: key);

  @override
  State<ComplainAgainstProHealthScreen> createState() =>
      _ComplainAgainstProHealthScreenState();
}

class _ComplainAgainstProHealthScreenState
    extends State<ComplainAgainstProHealthScreen> {
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
            'Complain Against Pro Health',
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
                      'Reason of complaint',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: blue1,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                      height: 10,
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
                        const SizedBox(
                          width: 1,
                        ),
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
                      height: 315,
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

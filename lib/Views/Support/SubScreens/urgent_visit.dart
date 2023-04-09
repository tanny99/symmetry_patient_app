import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_side/Utilities/Components/general_componets.dart';

import '../../../Utilities/Components/raise_complaint_screen_component.dart';
import '../../../Utilities/constants.dart';
import '../../../models/test_data.dart';

class UrgentVisitScreen extends StatefulWidget {
  const UrgentVisitScreen({Key? key}) : super(key: key);

  @override
  State<UrgentVisitScreen> createState() => _UrgentVisitScreenState();
}

class _UrgentVisitScreenState extends State<UrgentVisitScreen> {
  DateTime? date = DateTime.now();
  TimeOfDay? time = TimeOfDay.now();
  String _selectedTherapy = clinicians[0]['occupation'];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
            'Urgent Visit',
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: white1,
            ),
          ),
        ),
        //resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SizedBox(
                height: Config(context).height,
                width: Config(context).width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          color: blue1,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5.5,
                        ),
                        Text(
                          'Date',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: blue1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text(
                            DateFormat('dd/MM/yyyy').format(date!),
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: black3,
                            ),
                          ),
                        ),
                        const Spacer(),
                        DateTimeButton(
                          label: 'Change Date',
                          onTap: () async {
                            date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.schedule_outlined,
                          color: blue1,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5.5,
                        ),
                        Text(
                          'Arrival Time',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: blue1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text(
                            time!.format(context),
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: black3,
                            ),
                          ),
                        ),
                        const Spacer(),
                        DateTimeButton(
                          label: 'Change Time',
                          onTap: () async {
                            time = await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/person.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 5.5,
                        ),
                        Text(
                          'Type of Therapy',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: blue1,
                          ),
                        ),
                      ],
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
                        value: _selectedTherapy,
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
                            _selectedTherapy = value as String;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.text_snippet_outlined,
                          color: blue1,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5.5,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: blue1,
                          ),
                        ),
                      ],
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
                            vertical: 15, horizontal: 25),
                      ),
                      maxLines: 10,
                      minLines: 8,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomTextButton(
                      onTap: () {},
                      color: white1,
                      borderRadius: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_a_photo_outlined,
                            color: blue1,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          Text(
                            'Upload image',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: blue1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomTextButton(
                      onTap: () {},
                      color: blue1,
                      borderRadius: 15,
                      child: Text(
                        'Request',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: white1,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Spacer(
                      flex: 10,
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

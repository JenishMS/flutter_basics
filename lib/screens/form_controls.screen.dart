import 'package:flutter/material.dart';

class FormControlsScreen extends StatefulWidget {
  FormControlsScreen({Key? key}) : super(key: key);

  @override
  State<FormControlsScreen> createState() => _FormControlsScreenState();
}

class _FormControlsScreenState extends State<FormControlsScreen> {
  bool checkboxValue = false;
  String radioValue = 'MALE';
  double sliderValue = 10.0;
  bool switchValue = false;
  String dropdownValue = 'IND';
  List<String> list = ['AUS', 'IND', 'PAK', 'CHN', 'US', 'UK'];

  Widget _rowWidget(String label, Widget rightWidget) {
    return Row(
      children: [
        Expanded(child: Text(label), flex: 3),
        Expanded(
          child: rightWidget,
          flex: 7,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Back',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
        title: Text('Form Controls'),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              _rowWidget('Text Field', TextField()),
              _rowWidget(
                  'Checkbox',
                  Checkbox(
                      value: checkboxValue,
                      onChanged: (value) {
                        setState(() {
                          checkboxValue = !checkboxValue;
                        });
                      })),
              _rowWidget(
                'Radio',
                Row(
                  children: [
                    Radio(
                      value: 'MALE',
                      onChanged: (value) {
                        setState(() {
                          radioValue = value!;
                        });
                      },
                      groupValue: radioValue,
                    ),
                    Radio(
                      value: 'FEMALE',
                      onChanged: (value) {
                        setState(() {
                          radioValue = value!;
                        });
                      },
                      groupValue: radioValue,
                    )
                  ],
                ),
              ),
              _rowWidget(
                  'Slider',
                  Slider(
                    value: sliderValue,
                    max: 100.0,
                    min: 10.0,
                    onChanged: (value) {
                      setState(() {
                        sliderValue = value;
                      });
                    },
                  )),
              _rowWidget(
                  'Switch',
                  Switch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = !switchValue;
                      });
                    },
                  )),
              _rowWidget(
                  'Dropdown',
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

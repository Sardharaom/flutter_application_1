import 'package:flutter/material.dart';

class RadiuoPage extends StatefulWidget {
const  RadiuoPage({Key? key}) : super(key: key);

  @override
  State<RadiuoPage> createState() => _RadiuoPageState();
}

class _RadiuoPageState extends State<RadiuoPage> {
  // ignore: prefer_final_fields
  List<Map> _checkboxlist = [
    {"name": "Football", "isChecked": false},
    {"name": "Baseball", "isChecked": false},
    {
      "name": "Video Games",
      "isChecked": false,
    },
    {"name": "Readding Books", "isChecked": false},
    {"name": "Surfling The Internet", "isChecked": false}
  ];
  String _groupvalue = "male";
  bool _ischeked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: const Text("Male"),
            leading: Radio(
                value: "male",
                groupValue: _groupvalue,
                onChanged: (String? value) {
                  setState(() {
                    _groupvalue = value!;
                  });
                }),
          ),
          ListTile(
            title: const Text("Female"),
            leading: Radio(
                value: "Female",
                groupValue: _groupvalue,
                onChanged: (String? value) {
                  setState(() {
                    _groupvalue = value!;
                  });
                }),
          ),
          Checkbox(
              value: _ischeked,
              onChanged: (value) {
                setState(() {
                  _ischeked = value!;
                });
              }),
          Column(
            children: _checkboxlist.map(
              (a) {
                return CheckboxListTile(
                  title: Text(a["name"]),
                  value: a["isChecked"],
                  onChanged: (value) {
                    setState(
                      () {
                        a["isChecked"] = value;
                      },
                    );
                  },
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({Key? key}) : super(key: key);

  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  bool isOpen = false;
  List<String> listRadioOption = [
    "Male",
    "Female",
    "Other",
  ];
  var selectedGender = "Female";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('Male'),
              value: listRadioOption[0],
              groupValue: selectedGender,
              onChanged: (value) {
                selectedGender = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text('Female'),
              value: listRadioOption[1],
              groupValue: selectedGender,
              onChanged: (value) {
                selectedGender = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              title: Text('Other'),
              value: listRadioOption[2],
              groupValue: selectedGender,
              onChanged: (value) {
                selectedGender = value!;
                setState(() {});
              },
            ),
            Switch(
              splashRadius: 34,
              thumbColor: MaterialStateColor.resolveWith((states) {
                print(states);
                if (states.contains(MaterialState.selected)) {
                  return Colors.purple;
                }
                return Colors.black;
              }),
              thumbIcon: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.selected)) {
                  return Icon(
                    Icons.sunny,
                    color: Colors.amber,
                  );
                }
                return Icon(
                  Icons.nightlight,
                  color: Colors.white,
                );
              }),
              activeColor: Colors.amber,
              value: isOpen,
              onChanged: (value) {
                isOpen = value;
                setState(() {});
              },
            ),
            SwitchListTile(
              // splashRadius: 34,
              // thumbColor: MaterialStateColor.resolveWith((states) {
              //   print(states);
              //   if (states.contains(MaterialState.selected)) {
              //     return Colors.purple;
              //   }
              //   return Colors.black;
              // }),
              // thumbIcon: MaterialStateProperty.resolveWith((states) {
              //   if (states.contains(MaterialState.selected)) {
              //     return Icon(
              //       Icons.sunny,
              //       color: Colors.amber,
              //     );
              //   }
              //   return Icon(
              //     Icons.nightlight,
              //     color: Colors.white,
              //   );
              // }),

              title: Text('Theme'),
              activeColor: Colors.amber,
              value: isOpen,
              onChanged: (value) {
                isOpen = value;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}

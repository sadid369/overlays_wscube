import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overlays'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        icon: Icon(Icons.delete),
                        title: Text('Delete'),
                        content: Text('Are you sure want to delete?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Yes')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('No')),
                        ],
                      );
                    },
                  );
                },
                child: Text('Alert Dialogs')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        contentPadding: EdgeInsets.all(11),
                        title: Text('Choose your Country'),
                        children: [
                          Text('India'),
                          SimpleDialogOption(
                            child: Text('Bangladesh'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            padding: EdgeInsets.only(left: 11),
                          ),
                          SimpleDialogOption(
                            child: Text('Russia'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            padding: EdgeInsets.only(left: 11),
                          )
                        ],
                      );
                    },
                  );
                },
                child: Text('Simple Dialogs')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (context) {
                      return AboutDialog(
                        applicationIcon: Icon(Icons.abc_sharp),
                        applicationName: 'Sadid.dev',
                        applicationVersion: 'v.1.1.1',
                        applicationLegalese: 'Power by Sadid',
                      );
                    },
                  );
                },
                child: Text('About Dialogs')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (context) {
                      return AboutDialog(
                        applicationIcon: Icon(Icons.abc_sharp),
                        applicationName: 'Sadid.dev',
                        applicationVersion: 'v.1.1.1',
                        applicationLegalese: 'Power by Sadid',
                      );
                    },
                  );
                },
                child: Text('About Dialogs')),
            ElevatedButton(
                onPressed: () {
                  showGeneralDialog(
                    barrierLabel: 'Custom',
                    barrierDismissible: true,
                    context: context,
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(20),
                          height: 250,
                          child: Material(
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(),
                                SizedBox(
                                  height: 11,
                                ),
                                TextField(),
                                SizedBox(
                                  height: 11,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Add')),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Cancel')),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text('General  Dialogs')),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.green,
                      margin: const EdgeInsets.all(11),
                      padding: EdgeInsets.all(11),
                      content: const Text(
                        'You Are Back Online',
                      ),
                      action: SnackBarAction(
                        label: 'Dismiss',
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                      showCloseIcon: true,
                      closeIconColor: Colors.white,
                    ),
                  );
                },
                child: const Text('Show Snackbar')),
            ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: 'Hello i am a tost');
                },
                child: const Text('Flutter Toast')),
            ElevatedButton(
                onPressed: () async {
                  DateTime? date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000, 8, 29),
                    lastDate: DateTime.now(),
                  );
                  if (date != null) {
                    print(
                        "Selected Date : ${date.day}/${date.month}/${date.year}");
                  }
                },
                child: const Text('Show Date Picker')),
            ElevatedButton(
                onPressed: () async {
                  DateTimeRange? date = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2023, 12, 31));
                  if (date != null) {
                    print(
                        "Selected Date : from ${date.start.day}/${date.start.month}/${date.start.year} to ${date.end.day}/${date.end.month}/${date.end.year}");
                  }
                },
                child: const Text('Show Range Date Picker')),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? date = await showTimePicker(
                    context: context,
                    // initialTime: TimeOfDay.now(),
                    initialTime: TimeOfDay(minute: 10, hour: 10),
                  );

                  if (date != null) {
                    print("Selected Time : ${date.hour}:${date.minute}");
                  }
                },
                child: const Text('Show Time Picker')),
            ElevatedButton(
                onPressed: () async {
                  //  showCupertinoDialog(context: context, builder: (context) {
                  //    return Cupte
                  //  },);

                  showCupertinoModalPopup(
                    context: context,
                    builder: (mContext) {
                      return Container(
                        color: Colors.white,
                        height: 120,
                        child: CupertinoDatePicker(
                          initialDateTime: DateTime.now(),
                          maximumDate: DateTime.now().add(Duration(days: 7)),
                          minimumDate:
                              DateTime.now().subtract(Duration(days: 7)),
                          onDateTimeChanged: (DateTime value) {
                            print(
                                'Selected Date: ${value.day} / ${value.month} / ${value.year} Time: ${value.hour} : ${value.minute}');
                          },
                        ),
                      );
                    },
                  );
                },
                child: const Text('Show Cup tertino Time Picker')),
          ],
        ),
      ),
    );
  }
}

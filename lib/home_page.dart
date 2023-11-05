import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
          ],
        ),
      ),
    );
  }
}

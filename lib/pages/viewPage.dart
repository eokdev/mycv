// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycv/notifiers/fieldsnotifier.dart';
import 'package:mycv/pages/editingPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My CV',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ValueListenableBuilder<String>(
                valueListenable: fullname,
                builder: (context, value, child) {
                  return Container(
                    width: double.infinity,
                    child: Card(
                        color: Colors.white,
                        margin: EdgeInsets.all(15),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full name:",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                value,
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        )),
                  );
                }),
            ValueListenableBuilder<String>(
                valueListenable: slackusername,
                builder: (context, value, child) {
                  return Container(
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(15),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Slack username:",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              value,
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            ValueListenableBuilder<String>(
                valueListenable: githubhandble,
                builder: (context, value, chld) {
                  return Container(
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(15),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Github handle:",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              value,
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            ValueListenableBuilder<String>(
                valueListenable: bio,
                builder: (context, value, child) {
                  return Container(
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(15),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Persional bio:",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              value,
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => EditPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Edit Cv",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

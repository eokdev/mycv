// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mycv/notifiers/fieldsnotifier.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final fullnamecontroller = TextEditingController( text: fullname.value);
  final slackusernamecontroller = TextEditingController(text: slackusername.value);
  final githandlecontroller = TextEditingController(text: githubhandble.value);
  final biocontroller = TextEditingController(text: bio.value);
  @override
  void dispose() {
    fullnamecontroller.dispose();
    slackusernamecontroller.dispose();
    githandlecontroller.dispose();
    biocontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
        title: const Text(
          'Edit Cv',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                cursorColor: Colors.black,
                controller: fullnamecontroller,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(36, 26, 33, 0),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                onChanged: (value) {
                  fullname.value = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: Colors.black,
                controller: slackusernamecontroller,
                decoration: InputDecoration(
                  labelText: 'Slack Username',
                  contentPadding: EdgeInsets.fromLTRB(36, 26, 33, 0),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                onChanged: (value) {
                  slackusername.value = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                cursorColor: Colors.black,
                controller: githandlecontroller,
                decoration: InputDecoration(
                  labelText: 'GitHub Handle',
                  contentPadding: EdgeInsets.fromLTRB(36, 26, 33, 0),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                onChanged: (value) {
                  githubhandble.value = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: biocontroller,
                cursorColor: Colors.black,
                obscureText: false,
                minLines: 5,
                maxLines: 7,
                onChanged: (value) {
                  bio.value = value;
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(36, 26, 33, 0),
                  labelText: "Bio",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  helperText: "Please, keep personal bio brief.",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  FocusScope.of(context).unfocus();
            
                     Navigator.pop(context);
                },
                child: const Text(
                  'Save',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

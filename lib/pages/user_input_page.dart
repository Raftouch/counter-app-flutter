import 'package:flutter/material.dart';

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  State<UserInputPage> createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
// text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  // greeting msg variable
  String greetingMsg = '';

// greet user method
  void greetUser() {
    // print(myController.text);
    String userName = myController.text;

    setState(() {
      greetingMsg = 'Hello, ' + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User Input Page"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // greet user msg
                Text(greetingMsg),
                // text field
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Type your name here..."),
                ),
                // button
                ElevatedButton(onPressed: greetUser, child: Text('Tap me'))
              ],
            ),
          ),
        ));
  }
}
